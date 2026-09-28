#!/usr/bin/env python3
"""Corrige o que o cf-terraforming gera fora do schema do provider v5.

Uso: corrigir.py   (no diretório do repo, depois da geração)

Por tipo de recurso:
- access_application: `self_hosted_domains` sai quando há `destinations`;
  toda policy vira `id` + `precedence` (a reutilizável aponta para o recurso
  da policy); `tags = []` e `allowed_idps = []` saem (no estado são nulos)
- access_identity_provider `onetimepin`: sem `scim_config`, com `name = ""`
- tunnel_cloudflared_config: chaves da API em camelCase viram snake_case e
  `warp-routing` (fora do schema da v5) sai
- email_routing_rule com matcher `all`: sai — o catch-all é o recurso
  cloudflare_email_routing_catch_all
- email_routing_catch_all: a API sempre devolve `name = ""`; sem declarar,
  todo plan quer trocar por nulo
- email_routing_address: só campos calculados mudam; `ignore_changes = all`
- access_policy: `exclude = []` e `require = []` saem (no estado são nulos)
- ruleset: só as fases com regra nossa; `ddos_l7` e `http_request_sanitize`
  são os pontos de entrada padrão e pedem permissão que o token não tem
Por fim, tira do imports.tf todo import cujo alvo não está declarado.
"""
import glob
import re

FASES_FORA = {"ddos_l7", "http_request_sanitize"}
GERADOS = [f for f in glob.glob("*.tf") if f not in ("versions.tf", "locals.tf", "imports.tf")]


def blocos(texto):
    """Divide em blocos que terminam numa linha "}" (fim de recurso)."""
    atual = []
    for l in texto.split("\n"):
        atual.append(l)
        if l == "}":
            yield atual
            atual = []
    if atual:
        yield atual


def cabecalho(b):
    return next((l for l in b if l.strip()), "")


def tipo_de(b):
    m = re.match(r'resource "([^"]+)"', cabecalho(b))
    return m.group(1) if m else None


def id_do_nome(nome):
    return re.sub(r"_\d+$", "", nome.removeprefix("terraform_managed_resource_"))


# policies reutilizáveis: id -> endereço do recurso
policies = {}
for f in GERADOS:
    for m in re.finditer(r'^resource "cloudflare_zero_trust_access_policy" "([^"]+)"',
                         open(f, encoding="utf-8").read(), re.M):
        policies[id_do_nome(m.group(1))] = f"cloudflare_zero_trust_access_policy.{m.group(1)}.id"


def valor(linhas, chave, indent):
    for x in linhas:
        m = re.match(r"^" + " " * indent + chave + r'\s*=\s*"?([^"]*?)"?\s*$', x)
        if m:
            return m.group(1)
    return None


def policies_por_id(b):
    out, i = [], 0
    while i < len(b):
        if b[i] == "  policies = [{":
            entradas, atual = [], []
            i += 1
            while b[i] != "  }]":
                if b[i] == "  }, {":
                    entradas.append(atual); atual = []
                else:
                    atual.append(b[i])
                i += 1
            entradas.append(atual)
            out.append("  policies = [{")
            for n, e in enumerate(entradas):
                if n:
                    out.append("  }, {")
                ident = valor(e, "id", 4)
                if ident.startswith("cloudflare_"):  # já corrigido numa rodada anterior
                    ref = ident
                else:
                    ref = policies.get(ident, f'"{ident}"')
                out.append(f"    id         = {ref}")
                out.append(f"    precedence = {valor(e, 'precedence', 4)}")
            out.append("  }]")
        else:
            out.append(b[i])
        i += 1
    return out


def sem_bloco(b, chave, indent):
    out, pulando, prof = [], False, 0
    for l in b:
        if not pulando and re.match(r"^" + " " * indent + re.escape(chave) + r"\s*=\s*\{", l):
            pulando, prof = True, 0
        if pulando:
            prof += l.count("{") - l.count("}")
            if prof <= 0:
                pulando = False
            continue
        out.append(l)
    return out


def snake(m):
    return m.group(1) + re.sub(r"(?<=[a-z0-9])([A-Z])", lambda x: "_" + x.group(1).lower(), m.group(2)) + m.group(3)


def corrige(b):
    t = tipo_de(b)
    if t == "cloudflare_zero_trust_access_application":
        if any(l.startswith("  destinations = [") for l in b):
            b = [l for l in b if not re.match(r"^  self_hosted_domains\s*=", l)]
        b = [l for l in b if not re.match(r"^  (tags|allowed_idps)\s*=\s*\[\]\s*$", l)]
        return policies_por_id(b)
    if t == "cloudflare_zero_trust_access_identity_provider" and valor(b, "type", 2) == "onetimepin":
        b = sem_bloco(b, "scim_config", 2)
        if valor(b, "name", 2) is None:
            b.insert(b.index(cabecalho(b)) + 1, '  name = ""')
        return b
    if t == "cloudflare_zero_trust_tunnel_cloudflared_config":
        b = sem_bloco(b, "warp-routing", 4)
        return [re.sub(r"^(\s+)([a-z]+[A-Z][A-Za-z]*)(\s*=)", snake, l) for l in b]
    if t == "cloudflare_zero_trust_access_policy":
        return [l for l in b if not re.match(r"^  (exclude|require)\s*=\s*\[\]\s*$", l)]
    if t == "cloudflare_ruleset" and valor(b, "phase", 2) in FASES_FORA:
        return []
    if t == "cloudflare_email_routing_rule" and any(re.match(r'^\s+type\s*=\s*"all"', l) for l in b):
        return []
    if t == "cloudflare_email_routing_catch_all" and valor(b, "name", 2) is None:
        b.insert(b.index(cabecalho(b)) + 1, '  name = ""')
        return b
    if t == "cloudflare_email_routing_address" and not any("lifecycle" in l for l in b):
        return b[:-1] + ["", "  lifecycle {", "    ignore_changes = all", "  }", "}"]
    return b


declarados = set()
for f in GERADOS:
    texto = open(f, encoding="utf-8").read()
    novo = "\n".join(l for b in blocos(texto) for l in corrige(b))
    novo = re.sub(r"\n{3,}", "\n\n", novo).lstrip("\n")
    open(f, "w", encoding="utf-8").write(novo)
    declarados |= {f"{m.group(1)}.{m.group(2)}"
                   for m in re.finditer(r'^resource "([^"]+)" "([^"]+)"', novo, re.M)}

imports = open("imports.tf", encoding="utf-8").read()
mantidos = [m.group(0) for m in re.finditer(r"import \{\n\s*to = (\S+)\n.*?\n\}", imports, re.S)
            if m.group(1) in declarados]
open("imports.tf", "w", encoding="utf-8").write("\n\n".join(mantidos) + "\n")
