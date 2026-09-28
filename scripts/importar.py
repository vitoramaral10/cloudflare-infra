#!/usr/bin/env python3
"""Monta os blocos `import` dos recursos de um tipo gerados num .tf.

Uso: importar.py <arquivo.tf> <tipo> <conta> [prefixo]

- stdin: saída de `cf-terraforming import --modern-import-block` (pode ser
  vazia). Só passam os blocos cujo alvo existe no .tf — o cf-terraforming
  devolve também os rulesets gerenciados pela Cloudflare, que não são da zona.
- Tipos que o cf-terraforming não importa têm o id montado a partir do bloco.
- Com <prefixo>, os recursos do tipo são renomeados para <prefixo>_<nome>
  (os ajustes de zona saem com o mesmo nome em toda zona e colidiriam).
"""
import re
import sys

arquivo, tipo, conta = sys.argv[1:4]
prefixo = sys.argv[4] if len(sys.argv) > 4 else None

texto = open(arquivo, encoding="utf-8").read()
bloco_re = re.compile(
    r'^resource "' + re.escape(tipo) + r'" "([^"]+)" \{\n(.*?)^\}', re.M | re.S
)


def attr(corpo, nome):
    m = re.search(r"^\s*" + nome + r'\s*=\s*"([^"]+)"', corpo, re.M)
    return m.group(1) if m else None


def id_do_nome(nome):
    # terraform_managed_resource_<id>_<n>
    return re.sub(r"_\d+$", "", nome.removeprefix("terraform_managed_resource_"))


if prefixo:
    def renomeia(m):
        corpo = m.group(2)
        chave = attr(corpo, "setting_id") or id_do_nome(m.group(1))
        return f'resource "{tipo}" "{prefixo}_{chave}" {{\n{corpo}}}'
    texto = bloco_re.sub(renomeia, texto)
    open(arquivo, "w", encoding="utf-8").write(texto)

blocos = {m.group(1): m.group(2) for m in bloco_re.finditer(texto)}


def id_import(nome, corpo):
    if tipo in ("cloudflare_zero_trust_tunnel_cloudflared",
                "cloudflare_zero_trust_access_policy"):
        return f"{conta}/{id_do_nome(nome)}"
    if tipo == "cloudflare_zero_trust_tunnel_cloudflared_config":
        return f"{conta}/{attr(corpo, 'tunnel_id')}"
    if tipo == "cloudflare_zero_trust_access_identity_provider":
        return f"accounts/{conta}/{id_do_nome(nome)}"
    if tipo == "cloudflare_zone_setting":
        return f"{attr(corpo, 'zone_id')}/{attr(corpo, 'setting_id')}"
    if tipo == "cloudflare_email_routing_catch_all":
        return attr(corpo, "zone_id")
    if tipo == "cloudflare_ruleset":
        return f"zones/{attr(corpo, 'zone_id')}/{id_do_nome(nome)}"
    return None


saida = []
if any(id_import(n, c) for n, c in blocos.items()):
    for nome, corpo in blocos.items():
        saida.append((nome, id_import(nome, corpo)))
else:
    for m in re.finditer(r'to\s*=\s*' + re.escape(tipo) + r'\.(\S+)\s+id\s*=\s*"([^"]+)"',
                         sys.stdin.read()):
        if m.group(1) in blocos:
            saida.append((m.group(1), m.group(2)))

for nome, ident in saida:
    print(f'import {{\n  to = {tipo}.{nome}\n  id = "{ident}"\n}}\n')
