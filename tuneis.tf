resource "cloudflare_zero_trust_tunnel_cloudflared" "homelab_baremetal" {
  account_id = "6d8854bed30741da26ea83513b2b8b2f"
  config_src = "cloudflare"
  name       = "homelab_baremetal"
}

resource "cloudflare_zero_trust_tunnel_cloudflared" "homelab_docker" {
  account_id = "6d8854bed30741da26ea83513b2b8b2f"
  config_src = "cloudflare"
  name       = "homelab_docker"
}

resource "cloudflare_zero_trust_tunnel_cloudflared_config" "homelab_docker" {
  account_id = "6d8854bed30741da26ea83513b2b8b2f"
  source     = "cloudflare"
  tunnel_id  = "9ed70697-1fae-4486-85a0-bd95129c7030"
  config = {
    ingress = [
      # Identidade e acesso
      {
        hostname = "auth.vitormelo.dev.br"
        service  = "http://keycloak:8080"
      },
      {
        hostname = "vault.vitormelo.dev.br"
        service  = "http://vaultwarden:80"
      },
      # Serviços do homelab
      {
        hostname = "browser.vitormelo.dev.br"
        service  = "http://filebrowser:80"
      },
      {
        hostname = "n8n.vitormelo.dev.br"
        service  = "http://n8n:5678"
      },
      {
        hostname = "gotify.vitormelo.dev.br"
        service  = "http://gotify:80"
      },
      {
        hostname = "beszel.vitormelo.dev.br"
        service  = "http://beszel:8090"
      },
      {
        hostname = "mealie.vitormelo.dev.br"
        service  = "http://mealie:9000"
      },
      {
        hostname = "garage.vitormelo.dev.br"
        service  = "http://garage-webui:3909"
      },
      {
        hostname = "s3.vitormelo.dev.br"
        service  = "http://garage:3900"
      },
      # IA e conhecimento
      {
        hostname = "claude.vitormelo.dev.br"
        service  = "http://claude-api:8080"
      },
      {
        hostname = "patchbay.vitormelo.dev.br"
        service  = "http://patchbay:8787"
      },
      {
        hostname = "notion.vitormelo.dev.br"
        service  = "http://siyuan:6806"
      },
      # Bancos (painéis)
      {
        hostname = "express.vitormelo.dev.br"
        service  = "http://mongo-express:8081"
      },
      {
        hostname = "pgadmin.vitormelo.dev.br"
        service  = "http://pgadmin:80"
      },
      # Mídia
      {
        hostname = "jellyfin.vitormelo.dev.br"
        service  = "http://192.168.0.2:8096"
      },
      {
        hostname = "torrent.vitormelo.dev.br"
        service  = "http://qbittorrent:8080"
      },
      {
        hostname = "radarr.vitormelo.dev.br"
        service  = "http://radarr:7878"
      },
      {
        hostname = "sonarr.vitormelo.dev.br"
        service  = "http://sonarr:8989"
      },
      {
        hostname = "seerr.vitormelo.dev.br"
        service  = "http://seerr:5055"
      },
      {
        hostname = "romm.vitormelo.dev.br"
        service  = "http://romm:8080"
      },
      {
        hostname = "mediamanager.vitormelo.dev.br"
        service  = "http://media_manager:8080"
      },
      {
        hostname = "acervo.vitormelo.dev.br"
        service  = "http://acervo-hub-indexadores:9797"
      },
      # Projetos
      {
        hostname = "arca.vitormelo.dev.br"
        service  = "http://arca:8080"
      },
      {
        hostname = "ascensao.vitormelo.dev.br"
        service  = "http://ascensao:8080"
      },
      {
        hostname = "pixelportal.vitormelo.dev.br"
        service  = "http://ascensao:8080"
      },
      {
        hostname = "atrio.vitormelo.dev.br"
        service  = "http://atrio-traefik:80"
      },
      {
        hostname = "viajante.vitormelo.dev.br"
        service  = "http://atrio-traefik:80"
      },
      {
        hostname = "jobhunt.vitormelo.dev.br"
        service  = "http://jobhunt:8080"
      },
      {
        hostname = "nivo.vitormelo.dev.br"
        service  = "http://nivo-backend:8080"
      },
      {
        hostname = "agentia.vitormelo.dev.br"
        service  = "http://agentia-traefik:8000"
      },
      {
        hostname = "rentflow.vitormelo.dev.br"
        service  = "http://rentflow:3000"
      },
      {
        hostname = "repert.vitormelo.dev.br"
        service  = "http://repert:8000"
      },
      {
        hostname = "stimulus.vitormelo.dev.br"
        service  = "http://stimulus-api:3000"
      },
      {
        hostname = "stock-pulse.vitormelo.dev.br"
        path     = "^/api(/|$)"
        service  = "http://stock-pulse-api:8080"
      },
      {
        hostname = "valhalla.vitormelo.dev.br"
        service  = "http://valhalla-backend:8080"
      },
      # hexpedal.app
      {
        hostname = "auth.hexpedal.app"
        service  = "http://keycloak:8080"
      },
      {
        hostname = "api.hexpedal.app"
        service  = "http://hexpedal-backend:8888"
      },
      {
        hostname = "admin-api.hexpedal.app"
        service  = "http://hexpedal-admin-backend:8890"
      },
      # Nada casou acima: 404, nunca um serviço por engano
      {
        service = "http_status:404"
      },
    ]
  }
}

resource "cloudflare_zero_trust_tunnel_cloudflared_config" "homelab_baremetal" {
  account_id = "6d8854bed30741da26ea83513b2b8b2f"
  source     = "cloudflare"
  tunnel_id  = "79dfd3e9-3de9-444e-bde6-b5e77c6d5695"
  config = {
    ingress = [
      # Acesso ao host (chega por localhost)
      {
        hostname = "ssh.vitormelo.dev.br"
        service  = "ssh://localhost:22"
      },
      {
        hostname = "db-mongo.vitormelo.dev.br"
        service  = "tcp://localhost:27017"
      },
      # Nada casou acima: 404, nunca um serviço por engano
      {
        service = "http_status:404"
      },
    ]
  }
}

