resource "cloudflare_dns_record" "terraform_managed_resource_93abec57c4c78182bbaaaea07113ca52_0" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_a1bc2668009373c95a7f9f2480fe7e06_1" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_ebf05a7b1d999454aff8e1623231e002_2" {
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

resource "cloudflare_dns_record" "terraform_managed_resource_dfc6ebcf69c50a72d0a25a1490ce96c6_3" {
  content  = "100::"
  name     = "admin.hexpedal.app"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = "57565fcb2fbbe00496b1c3e2430c0c9a"
  settings = {}
}

resource "cloudflare_dns_record" "terraform_managed_resource_80de5a06960f6fb2bbc2274a72d0c1db_4" {
  content  = "100::"
  name     = "hexpedal.app"
  proxied  = true
  tags     = []
  ttl      = 1
  type     = "AAAA"
  zone_id  = "57565fcb2fbbe00496b1c3e2430c0c9a"
  settings = {}
}

