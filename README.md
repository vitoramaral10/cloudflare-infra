# cloudflare-infra

Estado da conta Cloudflare do Vitor (`vitormelo.dev.br`, `hexpedal.app`) como código.
As contas Acenup e Lucas Leati ficam fora.

## O que está aqui

| Arquivo | Conteúdo |
|---|---|
| `tuneis.tf` | túneis `homelab_docker` e `homelab_baremetal` e o ingress de cada um |
| `access.tf` | apps, policy `login` e provedores de identidade do Access |
| `dns-<zona>.tf` | registros DNS |
| `waf-<zona>.tf` | rulesets (WAF custom, normalização) |
| `zona-<zona>.tf` | ajustes da zona: SSL, TLS, HTTPS, HSTS |
| `email*.tf` | Email Routing: destinos (conta) e regras (zona) |
| `workers.tf`, `r2.tf` | domínios de Worker e buckets R2 (o código dos Workers vive no repo de cada projeto) |
| `locals.tf` | ids de conta, zona e túnel |

## Adoção (uma vez)

Feita em 2026-09-28: 113 recursos importados, `plan` sem mudança. Os passos ficam para
refazer do zero (conta nova, estado perdido).

1. Criar o token da API e gravar em `.env`: passo a passo em [docs/token-da-api.md](docs/token-da-api.md).
2. `scripts/exportar.sh` — baixa `terraform` e `cf-terraforming` em `.bin/`, gera os `.tf` e o `imports.tf`.
3. `.bin/terraform plan` — o esperado é só `import`. Um `change` ou `destroy` é diferença de
   schema do gerador: corrigir em `scripts/corrigir.py`, não à mão no `.tf`, para a exportação
   continuar reproduzível.
4. `.bin/terraform apply`, depois apagar `imports.tf`.

Os recursos saem com nome legível (`scripts/renomear.py`): `<zona>_<subdomínio>_<tipo>` no
DNS, o nome do túnel, `access_<app>`, `worker_<serviço>`, `<zona>_email_<endereço>`. Para
renomear um estado que já existe, `scripts/renomear.py --moved` grava os blocos `moved`.

## Regras

- **Mudança na Cloudflare passa por aqui**: editar o `.tf`, `plan`, `apply`. Mexer no painel cria
  diferença que o próximo `plan` desfaz.
- Hostname novo no túnel: a regra entra **no grupo comentado dela** em `tuneis.tf` (identidade,
  serviços, IA, bancos, mídia, projetos, hexpedal), nunca solta no fim; o `http_status:404` fica
  sempre por último. Aponta para nome de serviço ou alias (nunca nome de container), sem
  `origin_request` vazio, e o CNAME proxied leva `comment` dizendo o stack.
- Painel com login próprio não precisa de Access. Painel sem login ganha app do Access com a
  policy `login` **antes** da regra do túnel.
- O `terraform.tfstate` guarda o segredo dos túneis: fica fora do git. Faça backup dele junto
  com o resto do homelab.
