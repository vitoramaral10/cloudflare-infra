resource "cloudflare_dns_record" "hexpedal_admin_api_cname" {
  comment = "API da área administrativa (homelab_docker)"
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "admin-api.hexpedal.app"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "57565fcb2fbbe00496b1c3e2430c0c9a"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "hexpedal_api_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "api.hexpedal.app"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "57565fcb2fbbe00496b1c3e2430c0c9a"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "hexpedal_auth_cname" {
  content = "9ed70697-1fae-4486-85a0-bd95129c7030.cfargotunnel.com"
  name    = "auth.hexpedal.app"
  proxied = true
  tags    = []
  ttl     = 1
  type    = "CNAME"
  zone_id = "57565fcb2fbbe00496b1c3e2430c0c9a"
  settings = {
    flatten_cname = false
  }
}

resource "cloudflare_dns_record" "hexpedal_admin_aaaa" {
  content  = "100::"
  name     = "admin.hexpedal.app"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = "57565fcb2fbbe00496b1c3e2430c0c9a"
  settings = {}
}

resource "cloudflare_dns_record" "hexpedal_raiz_aaaa" {
  content  = "100::"
  name     = "hexpedal.app"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = "57565fcb2fbbe00496b1c3e2430c0c9a"
  settings = {}
}

