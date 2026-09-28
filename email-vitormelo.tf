resource "cloudflare_email_routing_rule" "terraform_managed_resource_16571d7eff45448fba67eb1044f454b4_0" {
  enabled  = true
  name     = "Rule created at 2026-03-01T23:52:30.682Z"
  priority = 0
  source   = "api"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  actions = [{
    type  = "forward"
    value = ["vitor.amaral10@gmail.com"]
  }]
  matchers = [{
    field = "to"
    type  = "literal"
    value = "contato-kavro@vitormelo.dev.br"
  }]
}

resource "cloudflare_email_routing_rule" "terraform_managed_resource_b235e6fd341940fc831cd053df8e43e0_1" {
  enabled  = true
  name     = "Rule created at 2025-01-05T20:50:17.018Z"
  priority = 0
  source   = "api"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  actions = [{
    type  = "forward"
    value = ["isis.lorena250@gmail.com"]
  }]
  matchers = [{
    field = "to"
    type  = "literal"
    value = "isis@vitormelo.dev.br"
  }]
}

resource "cloudflare_email_routing_rule" "terraform_managed_resource_3af087900d1a45c39cabd8af16e89b23_2" {
  enabled  = true
  name     = "Rule created at 2024-09-18T18:48:28.113Z"
  priority = 0
  source   = "api"
  zone_id  = "4b5854dc38bb066f8cb728d78e60ce53"
  actions = [{
    type  = "forward"
    value = ["vitor.amaral10@gmail.com"]
  }]
  matchers = [{
    field = "to"
    type  = "literal"
    value = "contato@vitormelo.dev.br"
  }]
}

resource "cloudflare_email_routing_catch_all" "terraform_managed_resource_a4af2f7380a24646bb407df9a7c095ca_0" {
  name    = ""
  enabled = true
  source  = "api"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  actions = [{
    type = "drop"
  }]
  matchers = [{
    type = "all"
  }]
}

