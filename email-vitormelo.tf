resource "cloudflare_email_routing_rule" "vitormelo_email_contato_kavro" {
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

resource "cloudflare_email_routing_rule" "vitormelo_email_isis" {
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

resource "cloudflare_email_routing_rule" "vitormelo_email_contato" {
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

resource "cloudflare_email_routing_catch_all" "vitormelo_email_catch_all" {
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

