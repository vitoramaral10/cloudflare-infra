#!/usr/bin/env bash
# Exporta o estado atual da conta Cloudflare para HCL (um .tf por assunto) e
# gera imports.tf com os blocos `import` que adotam cada recurso no estado.
# Uso: scripts/exportar.sh   (lê CLOUDFLARE_API_TOKEN do .env)
# Roda uma vez, na adoção. Depois disso a fonte da verdade é o próprio .tf.
set -euo pipefail
cd "$(dirname "$0")/.."

if [[ -f .env ]]; then set -a; . ./.env; set +a; fi
: "${CLOUDFLARE_API_TOKEN:?defina CLOUDFLARE_API_TOKEN no .env}"

CONTA=6d8854bed30741da26ea83513b2b8b2f
declare -A ZONAS=(
  [vitormelo]=4b5854dc38bb066f8cb728d78e60ce53
  [hexpedal]=57565fcb2fbbe00496b1c3e2430c0c9a
)
TUNEIS=9ed70697-1fae-4486-85a0-bd95129c7030,79dfd3e9-3de9-444e-bde6-b5e77c6d5695
AJUSTES=ssl,always_use_https,min_tls_version,automatic_https_rewrites,security_header,security_level,browser_check,http3,always_online,email_obfuscation,websockets

BIN="$PWD/.bin"
mkdir -p "$BIN"
export PATH="$BIN:$PATH"

# --- ferramentas locais em .bin/ (fora do git) ---
if [[ ! -x "$BIN/terraform" ]]; then
  versao=$(curl -fsS https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r .current_version)
  echo "baixando terraform $versao"
  curl -fsSL "https://releases.hashicorp.com/terraform/${versao}/terraform_${versao}_linux_amd64.zip" -o "$BIN/tf.zip"
  python3 -c "import zipfile,sys; zipfile.ZipFile(sys.argv[1]).extract('terraform', sys.argv[2])" "$BIN/tf.zip" "$BIN"
  chmod +x "$BIN/terraform"; rm "$BIN/tf.zip"
fi
if [[ ! -x "$BIN/cf-terraforming" ]]; then
  echo "instalando cf-terraforming"
  GOBIN="$BIN" go install github.com/cloudflare/cf-terraforming/cmd/cf-terraforming@latest
fi

# recomeça os arquivos gerados; o que foi escrito à mão não passa por aqui
rm -f tuneis.tf access.tf workers.tf r2.tf email.tf dns-*.tf waf-*.tf zona-*.tf email-*.tf
rm -f imports.tf

terraform init -input=false >/dev/null

CFT=(--terraform-binary-path "$BIN/terraform")
LOG=.bin/exportar.log
# os imports só viram .tf no fim: o cf-terraforming lê o diretório a cada
# chamada, e um imports.tf pela metade quebraria as seguintes
PARCIAL=.bin/imports.parcial
: > "$LOG"; : > "$PARCIAL"

# gera o HCL de um tipo e acrescenta os imports (montados por importar.py).
# $1 arquivo .tf  $2 --zone|--account  $3 id  $4 tipo  $5 --resource-id (opcional)
# $6 prefixo para renomear os recursos (opcional)
gerar() {
  local arquivo=$1 flag=$2 alvo=$3 tipo=$4 rid=${5:-} prefixo=${6:-}
  local extra=(); [[ -n $rid ]] && extra=(--resource-id "$tipo=$rid")
  echo "  $tipo ($arquivo)"
  cf-terraforming generate "$flag" "$alvo" --resource-type "$tipo" "${extra[@]}" "${CFT[@]}" >> "$arquivo" 2>>"$LOG"
  case $tipo in
    # sem suporte no `cf-terraforming import`: o id sai do próprio bloco
    cloudflare_zero_trust_tunnel_cloudflared|cloudflare_zero_trust_tunnel_cloudflared_config|\
    cloudflare_zero_trust_access_policy|cloudflare_zero_trust_access_identity_provider|\
    cloudflare_zone_setting|cloudflare_ruleset|cloudflare_email_routing_catch_all)
      scripts/importar.py "$arquivo" "$tipo" "$CONTA" $prefixo < /dev/null ;;
    *)
      cf-terraforming import "$flag" "$alvo" --resource-type "$tipo" --modern-import-block "${extra[@]}" "${CFT[@]}" 2>>"$LOG" |
        scripts/importar.py "$arquivo" "$tipo" "$CONTA" ;;
  esac >> "$PARCIAL"
}

echo "conta"
gerar tuneis.tf  --account "$CONTA" cloudflare_zero_trust_tunnel_cloudflared
gerar tuneis.tf  --account "$CONTA" cloudflare_zero_trust_tunnel_cloudflared_config "$TUNEIS"
gerar access.tf  --account "$CONTA" cloudflare_zero_trust_access_policy
gerar access.tf  --account "$CONTA" cloudflare_zero_trust_access_application
gerar access.tf  --account "$CONTA" cloudflare_zero_trust_access_identity_provider
gerar workers.tf --account "$CONTA" cloudflare_workers_custom_domain
gerar r2.tf      --account "$CONTA" cloudflare_r2_bucket
gerar email.tf   --account "$CONTA" cloudflare_email_routing_address

for nome in "${!ZONAS[@]}"; do
  zona=${ZONAS[$nome]}
  echo "zona $nome"
  gerar "dns-$nome.tf"   --zone "$zona" cloudflare_dns_record
  gerar "waf-$nome.tf"   --zone "$zona" cloudflare_ruleset
  gerar "email-$nome.tf" --zone "$zona" cloudflare_email_routing_rule
  gerar "email-$nome.tf" --zone "$zona" cloudflare_email_routing_catch_all
  gerar "zona-$nome.tf"  --zone "$zona" cloudflare_zone_setting "$AJUSTES" "$nome"
done

mv "$PARCIAL" imports.tf

# o que o gerador produz fora do schema do provider v5 (ver corrigir.py)
scripts/corrigir.py
# tipo sem recurso na conta (hoje, R2) não vira arquivo vazio
find . -maxdepth 1 -name "*.tf" -empty -delete

terraform fmt >/dev/null
terraform validate
echo
echo "pronto. próximo passo: terraform plan — o esperado é só 'import', sem change/destroy."
