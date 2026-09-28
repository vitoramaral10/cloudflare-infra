resource "cloudflare_dns_record" "vitormelo_acervo_cname" {
  comment = "acervo-hub (interface + Torznab), atrás do Access"
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "acervo.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_arca_cname" {
  comment = "arca — carteira ARCA (stack arca no homelab)"
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "arca.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_ascensao_cname" {
  comment = "Ascensão — túnel homelab_docker (stack ascensao)"
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "ascensao.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_atrio_cname" {
  comment = "atrio console-frontend via atrio-traefik"
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "atrio.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_auth_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "auth.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_beszel_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "beszel.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_browser_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "browser.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_claude_cname" {
  comment = "claude-api gateway (painel)"
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "claude.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_db_mongo_cname" {
  content = "79dfd3e9-3de9-444e-bde6-b5e77c6d5695.cfargotunnel.com"
  name    = "db-mongo.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_express_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "express.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_firebase1_domainkey_kavro_cname" {
  content = "mail-kavro-vitormelo-dev-br.dkim1._domainkey.firebasemail.com"
  name    = "firebase1._domainkey.kavro.vitormelo.dev.br"
  proxied = false
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_firebase2_domainkey_kavro_cname" {
  content = "mail-kavro-vitormelo-dev-br.dkim2._domainkey.firebasemail.com"
  name    = "firebase2._domainkey.kavro.vitormelo.dev.br"
  proxied = false
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_garage_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "garage.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_gotify_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "gotify.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_jellyfin_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "jellyfin.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_jobhunt_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "jobhunt.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "portolano" {
  comment = "Portolano: Traefik da stack portolano"
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "portolano.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_mealie_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "mealie.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_mediamanager_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "mediamanager.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_n8n_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "n8n.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_nivo_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "nivo.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_notion_cname" {
  comment = "SiYuan (substituto self-hosted do Notion) via tunel homelab_docker"
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "notion.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_patchbay_cname" {
  comment = "patchbay — gateway MCP no stack ~/mcp"
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "patchbay.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_pgadmin_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "pgadmin.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_pixelportal_cname" {
  comment = "Pixel Portal (stack ascensao)"
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "pixelportal.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_radarr_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "radarr.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_rentflow_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "rentflow.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_repert_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "repert.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_romm_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "romm.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_s3_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "s3.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_seerr_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "seerr.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_sonarr_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "sonarr.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_ssh_cname" {
  content = "79dfd3e9-3de9-444e-bde6-b5e77c6d5695.cfargotunnel.com"
  name    = "ssh.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_stimulus_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "stimulus.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_stock_pulse_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "stock-pulse.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_torrent_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "torrent.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_valhalla_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "valhalla.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_vault_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "vault.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_viajante_cname" {
  comment = "Atrio — web do viajante (homelab_docker)"
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "viajante.vitormelo.dev.br"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "vitormelo_nivo_mx" {
  content  = "inbound-smtp.sa-east-1.amazonaws.com"
  name     = "nivo.vitormelo.dev.br"
  priority = 10
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "MX"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_send_nivo_mx" {
  content  = "feedback-smtp.sa-east-1.amazonses.com"
  name     = "send.nivo.vitormelo.dev.br"
  priority = 10
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "MX"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_send_mx" {
  content  = "feedback-smtp.sa-east-1.amazonses.com"
  name     = "send.vitormelo.dev.br"
  priority = 10
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "MX"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_raiz_mx_3" {
  content  = "route3.mx.cloudflare.net"
  name     = "vitormelo.dev.br"
  priority = 71
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_raiz_mx_2" {
  content  = "route2.mx.cloudflare.net"
  name     = "vitormelo.dev.br"
  priority = 20
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_raiz_mx" {
  content  = "route1.mx.cloudflare.net"
  name     = "vitormelo.dev.br"
  priority = 75
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "MX"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_cf2024_1_domainkey_txt" {
  content  = "\"v=DKIM1; h=sha256; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiweykoi+o48IOGuP7GR3X0MOExCUDY/BCRHoWBnh3rChl7WhdyCxW3jgq1daEjPPqoi7sJvdg5hEQVsgVRQP4DcnQDVjGMbASQtrY4WmB1VebF+RPJB2ECPsEDTpeiI5ZyUAwJaVX7r6bznU67g7LvFq35yIo4sdlmtZGV+i0H4cpYH9+3JJ78k\" \"m4KXwaf9xUJCWF6nxeD+qG6Fyruw1Qlbds2r85U9dkNDVAS3gioCvELryh1TxKGiVTkg4wqHTyHfWsp7KD3WQHYJn0RyfJJu6YEmL77zonn7p2SRMvTMP3ZEXibnC9gz3nnhR6wcYL8Q7zXypKTMD58bTixDSJwIDAQAB\""
  name     = "cf2024-1._domainkey.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_dmarc_txt" {
  content  = "\"v=DMARC1; p=none; rua=mailto:7f36e4a84a4d4d6ba28a1c78b4b9d427@dmarc-reports.cloudflare.net\""
  name     = "_dmarc.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_kavro_txt" {
  content  = "\"firebase=kavro-fe172\""
  name     = "kavro.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_kavro_txt_2" {
  content  = "\"v=spf1 include:_spf.firebasemail.com ~all\""
  name     = "kavro.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_resend_domainkey_nivo_txt" {
  content  = "\"p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDvdHExvReiQzSsF9rqUsyubRnn51GZaW04TLSTQUIElc6tp/3jhT2obUaQ08PS6jV97q/H+Z48IErP57/pKlb7P0stHkmmbuLZJcNsWOM+J+LKNWSv6qVKsjJSPYfkHQT+5xvULNKuhxoN8rBr78uKRQpMPyQ/BBtrqTKiszkjCQIDAQAB\""
  name     = "resend._domainkey.nivo.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_resend_domainkey_txt" {
  content  = "\"p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD1mDfy+thXCkpVWRm46VwNnsoJtG64tNgN2qsfL5dNNeNC3DfPN0vJs34jJiv0vQq7sA2cAGQD9u3QK9OEOXjeGY7G7yTWhaSmLE5Uib1LtMn7EXkl59eqJNeyx3gjF6Ck3Cxy0NWjgs/NSIIU5dSvllHWk69njAhOLPfR6Q9IfQIDAQAB\""
  name     = "resend._domainkey.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_send_nivo_txt" {
  content  = "\"v=spf1 include:amazonses.com ~all\""
  name     = "send.nivo.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_send_txt" {
  content  = "\"v=spf1 include:amazonses.com ~all\""
  name     = "send.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_raiz_txt" {
  content  = "\"google-site-verification=1IUkh3QM8RM1sDbjMXcoiVZ4k_LL_3NLA06TUOhyeqk\""
  name     = "vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_raiz_txt_2" {
  content  = "\"openai-domain-verification=dv-8ZBOOqCcmWSDNZVYfGz85MJ2\""
  name     = "vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_raiz_txt_3" {
  content  = "\"v=spf1 include:_spf.mx.cloudflare.net ~all\""
  name     = "vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_clinic_page_demo_aaaa" {
  content  = "100::"
  name     = "clinic-page-demo.vitormelo.dev.br"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_detailer_os_aaaa" {
  content  = "100::"
  name     = "detailer-os.vitormelo.dev.br"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "vitormelo_raiz_aaaa" {
  content  = "100::"
  name     = "vitormelo.dev.br"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

