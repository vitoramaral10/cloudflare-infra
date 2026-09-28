#!/usr/bin/env python3
"""Troca os nomes terraform_managed_resource_<id>_N por nomes legíveis.

Uso: renomear.py [--moved]   (no diretório do repo)

O nome sai dos atributos do próprio recurso: zona + subdomínio + tipo no DNS,
nome do túnel, nome da app do Access, serviço do Worker etc. As referências
entre recursos são atualizadas junto. Com --moved, grava moved.tf para o
Terraform renomear no estado sem tocar na Cloudflare (rodar uma vez, na troca).
"""
import glob
import re
import sys

ZONAS = {
    "4b5854dc38bb066f8cb728d78e60ce53": ("vitormelo", "vitormelo.dev.br"),
    "57565fcb2fbbe00496b1c3e2430c0c9a": ("hexpedal", "hexpedal.app"),
}
ARQUIVOS = sorted(f for f in glob.glob("*.tf") if f not in ("versions.tf", "locals.tf", "moved.tf", "imports.tf"))
BLOCO = re.compile(r'^resource "([^"]+)" "([^"]+)" \{\n(.*?)^\}', re.M | re.S)


def attr(corpo, chave):
    m = re.search(r"^  " + re.escape(chave) + r'\s*=\s*"([^"]*)"', corpo, re.M)
    return m.group(1) if m else ""


def limpa(texto):
    return re.sub(r"_+", "_", re.sub(r"[^a-z0-9]+", "_", texto.lower())).strip("_")


textos = {f: open(f, encoding="utf-8").read() for f in ARQUIVOS}
recursos = [(f, m.group(1), m.group(2), m.group(3)) for f, t in textos.items() for m in BLOCO.finditer(t)]
tuneis = {re.sub(r"_\d+$", "", n.removeprefix("terraform_managed_resource_")): attr(c, "name")
          for _, t, n, c in recursos if t == "cloudflare_zero_trust_tunnel_cloudflared"}


def nome_novo(tipo, corpo):
    zona = ZONAS.get(attr(corpo, "zone_id"), ("", ""))
    if tipo == "cloudflare_dns_record":
        host = attr(corpo, "name")
        sub = host[: -len(zona[1])].rstrip(".") if host.endswith(zona[1]) else host
        return f"{zona[0]}_{limpa(sub) or 'raiz'}_{attr(corpo, 'type').lower()}"
    if tipo == "cloudflare_zero_trust_tunnel_cloudflared":
        return limpa(attr(corpo, "name"))
    if tipo == "cloudflare_zero_trust_tunnel_cloudflared_config":
        return limpa(tuneis.get(attr(corpo, "tunnel_id"), attr(corpo, "tunnel_id")))
    if tipo == "cloudflare_zero_trust_access_application":
        return "access_" + limpa(attr(corpo, "name"))
    if tipo == "cloudflare_zero_trust_access_policy":
        return "policy_" + limpa(attr(corpo, "name"))
    if tipo == "cloudflare_zero_trust_access_identity_provider":
        t = attr(corpo, "type")
        return "idp_" + ("pin_email" if t == "onetimepin" else limpa(attr(corpo, "name") or t))
    if tipo == "cloudflare_workers_custom_domain":
        return "worker_" + limpa(attr(corpo, "service"))
    if tipo == "cloudflare_email_routing_address":
        return "destino_" + limpa(attr(corpo, "email").split("@")[0])
    if tipo == "cloudflare_email_routing_rule":
        m = re.search(r'value\s*=\s*"([^"@]+)@', corpo)
        return f"{zona[0]}_email_{limpa(m.group(1)) if m else 'regra'}"
    if tipo == "cloudflare_email_routing_catch_all":
        return f"{zona[0]}_email_catch_all"
    if tipo == "cloudflare_ruleset":
        fase = attr(corpo, "phase")
        curto = {"http_request_firewall_custom": "waf_custom"}.get(fase, limpa(fase))
        return f"{zona[0]}_{curto}"
    return None


# decide os nomes; colisão ganha sufixo _2, _3 na ordem do conteúdo
trocas, usados = {}, {}
for f, tipo, nome, corpo in sorted(recursos, key=lambda r: (r[1], nome_novo(r[1], r[3]) or "", r[3])):
    if not nome.startswith("terraform_managed_resource_"):
        usados.setdefault(tipo, set()).add(nome)
        continue
    base = nome_novo(tipo, corpo)
    if not base:
        continue
    novo, n = base, 1
    while novo in usados.setdefault(tipo, set()):
        n += 1
        novo = f"{base}_{n}"
    usados[tipo].add(novo)
    trocas[(tipo, nome)] = novo

for f, t in textos.items():
    for (tipo, velho), novo in trocas.items():
        t = t.replace(f'resource "{tipo}" "{velho}"', f'resource "{tipo}" "{novo}"')
        t = re.sub(re.escape(f"{tipo}.{velho}") + r"\b", f"{tipo}.{novo}", t)
    open(f, "w", encoding="utf-8").write(t)

if "--moved" in sys.argv and trocas:
    with open("moved.tf", "a", encoding="utf-8") as m:
        for (tipo, velho), novo in sorted(trocas.items(), key=lambda x: (x[0][0], x[1])):
            m.write(f"moved {{\n  from = {tipo}.{velho}\n  to   = {tipo}.{novo}\n}}\n\n")

print(f"{len(trocas)} recursos renomeados")
