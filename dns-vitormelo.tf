resource "cloudflare_dns_record" "terraform_managed_resource_d56e399a020086e80db5dd651760a45a_1" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_e3fc9c98248293099717cf9957806f06_2" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_ea9a91ecd47ecfed621745996ad92b51_3" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_c07614d076fe6c5cc9968965e8dfeadb_4" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_4a34d7ab7216ac826de999c2f3721df5_5" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_cdc736ff3680b01e12567b799dbb7b02_6" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_edfebe9bd09c698511ed47cc74ba6b67_7" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_d91f88b612158bd0e49bebf172266c14_8" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_4ac6e2e81f670e0949e251e706bf7a00_9" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_f0d3ba2e5fa81c95cfca491c39e54f49_10" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_f6d4fa38584a9ffbff6749712f0510bf_11" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_53d3ceb2067e94298c988895a6f6f0b0_12" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_319575f65b971d673aea3a77dc2d24a2_13" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_fd545cf668461316c889eb298008e133_14" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_0e044639ef8399f95d8ec87832ddca05_15" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_9f9a033b5020b15e90b7645a81bef324_16" {
  content = "79dfd3e9-3de9-444e-bde6-b5e77c6d5695.cfargotunnel.com"
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

resource "cloudflare_dns_record" "terraform_managed_resource_7a31b7183a8d48624dc0cf7820e19a00_17" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_24a6a8900ace96f338910eb6edd15d51_18" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_60f2d2ee09bdd880a4b28f6f55d493f9_19" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_246b81239ec880cae8973043eb48bd8c_20" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_0ce8c191c266f054794d077db97635f0_21" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_88998e526a2146fa59347a2eb07f0351_22" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_3e7337079c8d5a0585790cacb3611c88_23" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_133e6f393e6984690dcc2501eb719615_24" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_0bf0bd3169d7030c52e24db72dd443ec_25" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_1e14afa1f4fc9b202500304fe4e67aff_26" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_9ebabcc3a66872e74d15a6d8f01e9f8c_27" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_795a526310028ef7ffa6757089bed6f2_28" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_0fae4f15505d1e53c281f47d6333891f_29" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_7c2ec6e765d0d3710657e2f5b22a90e1_30" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_4727733cdfa8cdcac046afa0cbe98f33_31" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_f25ae586e416cc3220e4a4ce3404dcf5_32" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_761c47c2571b0b7b52e286af4729f75f_33" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_f3c400518401e5621d7645be925b38f0_34" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_ef244eee09210b52666a8a06898e89f4_35" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_c4aaab707a1f88687320f1f784a9a0eb_36" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_2f3174cfa476e97723f1a50bfff59996_37" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_178163ae389c32136bc632152e4ae66c_38" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_d876c338503b49bbfc4cf5ed48920bc9_39" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_e5e52ac754481bbe1f5c6b847a8c392f_40" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_9e953867a4834f143f47a78b2a5eb821_41" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_ab386748dcc8e3e9cc57219ef38342ec_42" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_b49315e35b26674885e1e3d49a6091e2_43" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_6ec2e74108b85e372843a998a2007d6a_44" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_a6e7a00414e657734714af02247a46f6_45" {
  content  = "\"v=DKIM1; h=sha256; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiweykoi+o48IOGuP7GR3X0MOExCUDY/BCRHoWBnh3rChl7WhdyCxW3jgq1daEjPPqoi7sJvdg5hEQVsgVRQP4DcnQDVjGMbASQtrY4WmB1VebF+RPJB2ECPsEDTpeiI5ZyUAwJaVX7r6bznU67g7LvFq35yIo4sdlmtZGV+i0H4cpYH9+3JJ78k\" \"m4KXwaf9xUJCWF6nxeD+qG6Fyruw1Qlbds2r85U9dkNDVAS3gioCvELryh1TxKGiVTkg4wqHTyHfWsp7KD3WQHYJn0RyfJJu6YEmL77zonn7p2SRMvTMP3ZEXibnC9gz3nnhR6wcYL8Q7zXypKTMD58bTixDSJwIDAQAB\""
  name     = "cf2024-1._domainkey.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_e6a16d3b9e6a286e6e2032949fb19570_46" {
  content  = "\"v=DMARC1; p=none; rua=mailto:7f36e4a84a4d4d6ba28a1c78b4b9d427@dmarc-reports.cloudflare.net\""
  name     = "_dmarc.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_6edcf1239faa65851eab62da77875340_47" {
  content  = "\"firebase=kavro-fe172\""
  name     = "kavro.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_4a5d5c51c583313ff8040e715038aa34_48" {
  content  = "\"v=spf1 include:_spf.firebasemail.com ~all\""
  name     = "kavro.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_549dd0ece2fb6f9863329fef2dc0b949_49" {
  content  = "\"p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDvdHExvReiQzSsF9rqUsyubRnn51GZaW04TLSTQUIElc6tp/3jhT2obUaQ08PS6jV97q/H+Z48IErP57/pKlb7P0stHkmmbuLZJcNsWOM+J+LKNWSv6qVKsjJSPYfkHQT+5xvULNKuhxoN8rBr78uKRQpMPyQ/BBtrqTKiszkjCQIDAQAB\""
  name     = "resend._domainkey.nivo.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_5d1de34a7894e6fa42afd701dd9051d8_50" {
  content  = "\"p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD1mDfy+thXCkpVWRm46VwNnsoJtG64tNgN2qsfL5dNNeNC3DfPN0vJs34jJiv0vQq7sA2cAGQD9u3QK9OEOXjeGY7G7yTWhaSmLE5Uib1LtMn7EXkl59eqJNeyx3gjF6Ck3Cxy0NWjgs/NSIIU5dSvllHWk69njAhOLPfR6Q9IfQIDAQAB\""
  name     = "resend._domainkey.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_2721f19a150050f6a45e82e88de02b0b_51" {
  content  = "\"v=spf1 include:amazonses.com ~all\""
  name     = "send.nivo.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_478d393049cfefe15096a07674d254b2_52" {
  content  = "\"v=spf1 include:amazonses.com ~all\""
  name     = "send.vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_d94007d02a3425d5b68e9a8e920f9d1f_53" {
  content  = "\"google-site-verification=1IUkh3QM8RM1sDbjMXcoiVZ4k_LL_3NLA06TUOhyeqk\""
  name     = "vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 3600
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_f8a147985d6369ec0632251273eafb40_54" {
  content  = "\"openai-domain-verification=dv-8ZBOOqCcmWSDNZVYfGz85MJ2\""
  name     = "vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_a75553da4df90ac2eb822adde8414a92_55" {
  content  = "\"v=spf1 include:_spf.mx.cloudflare.net ~all\""
  name     = "vitormelo.dev.br"
  proxied  = false
  tags     = []
  ttl      = 1
  type     = "TXT"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_fde2fafdedef45ec924c4bd9731c745e_56" {
  content  = "100::"
  name     = "clinic-page-demo.vitormelo.dev.br"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_a7f16cf96559305bd435c439fa6d6646_57" {
  content  = "100::"
  name     = "detailer-os.vitormelo.dev.br"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_4467ea99e10ac4ef73f17c452918b5ed_58" {
  content  = "100::"
  name     = "vitormelo.dev.br"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  settings = {}
}

