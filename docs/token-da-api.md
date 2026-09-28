# Criar o token da API para o Terraform

O Terraform e o `scripts/exportar.sh` leem `CLOUDFLARE_API_TOKEN` do `.env`. O token
não pode ser criado por automação: o MCP da Cloudflare não tem permissão sobre
tokens (erro 9109). Ele nasce no painel, à mão.

## Qual tipo de token

Use **Account API Token** (Manage Account → Account API Tokens). Ele fica preso à
conta do Vitor.

Evite o **User API Token** (My Profile → API Tokens, prefixo `cfut_`): ele alcança
toda conta de que o usuário é membro, inclusive Acenup e Lucas Leati, que estão
fora deste repositório.

## Passo a passo

1. Abra <https://dash.cloudflare.com>, escolha a conta **Vitor.amaral10@gmail.com's
   Account** e vá em **Manage Account → Account API Tokens → Create Token**.
2. Em "Custom token", clique em **Get started**.
3. **Token name:** `cloudflare-infra-terraform`.
4. **Permissions.** Adicione uma linha por item:

   | Escopo | Permissão | Nível | Cobre |
   |---|---|---|---|
   | Account | Cloudflare Tunnel | Edit | `tuneis.tf` |
   | Account | Access: Apps and Policies | Edit | apps e policy do `access.tf` |
   | Account | Access: Organizations, Identity Providers, and Groups | Edit | IdPs do `access.tf` |
   | Account | Workers Scripts | Edit | `workers.tf` (domínios dos Workers) |
   | Account | Workers R2 Storage | Edit | `r2.tf` |
   | Account | Email Routing Addresses | Edit | `email.tf` |
   | Zone | Zone | Read | leitura das zonas |
   | Zone | DNS | Edit | `dns-*.tf` |
   | Zone | Zone Settings | Edit | `zona-*.tf` |
   | Zone | Zone WAF | Edit | `waf-*.tf` |
   | Zone | Email Routing Rules | Edit | `email-*.tf` |

5. **Zone Resources:** `Include` → `All zones from an account` → a conta do Vitor.
   Isso cobre `vitormelo.dev.br` e `hexpedal.app`, e as zonas que vierem depois.
6. **Client IP Address Filtering:** deixe em branco. Se quiser travar, use o IP de
   saída do homelab. O token só é usado de lá.
7. **TTL:** sem data de fim. Quem roda o Terraform é você, na hora. Se preferir
   renovar por prazo, 1 ano, e anote a data.
8. **Continue to summary → Create Token.** O valor aparece **uma vez só**. Copie-o.

## Gravar e conferir

```bash
cd ~/projects/cloudflare-infra
umask 077
printf 'CLOUDFLARE_API_TOKEN=%s\n' 'COLE_AQUI' > .env   # .env fica fora do git

# conferir: deve responder "active"
set -a; . ./.env; set +a
curl -s -H "Authorization: Bearer $CLOUDFLARE_API_TOKEN" \
  https://api.cloudflare.com/client/v4/accounts/6d8854bed30741da26ea83513b2b8b2f/tokens/verify \
  | jq -r .result.status
```

Com token de usuário, a verificação é em `/client/v4/user/tokens/verify`.

## Quando algo dá 403

O `terraform plan` diz qual chamada falhou (`403 Forbidden` com a URL). O trecho da
URL diz qual permissão falta: `/rulesets/` → Zone WAF, `/email/routing/` → Email
Routing, `/cfd_tunnel/` → Cloudflare Tunnel, `/access/` → Access. Edite o token no
painel e adicione a permissão. O valor do token não muda.

Os rulesets das fases `ddos_l7` e `http_request_sanitize` ficam fora de propósito
(`scripts/corrigir.py`): são os pontos de entrada padrão da zona e pedem permissões
que não fazem falta aqui.

## Trocar o token

1. Crie o novo pelo passo a passo acima e grave no `.env`.
2. Rode `.bin/terraform plan` para confirmar que funciona.
3. Apague o antigo em Account API Tokens (ou em My Profile → API Tokens, se for de
   usuário).
