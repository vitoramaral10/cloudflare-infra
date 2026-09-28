resource "cloudflare_email_routing_catch_all" "terraform_managed_resource_a2994e31c5434449a6d892017de23763_0" {
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

