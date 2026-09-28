resource "cloudflare_email_routing_catch_all" "hexpedal_email_catch_all" {
  name    = ""
  enabled = false
  source  = "api"
  zone_id = "57565fcb2fbbe00496b1c3e2430c0c9a"
  actions = [{
    type = "drop"
  }]
  matchers = [{
    type = "all"
  }]
}

