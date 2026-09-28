resource "cloudflare_zero_trust_access_policy" "policy_login" {
  account_id       = "6d8854bed30741da26ea83513b2b8b2f"
  decision         = "allow"
  name             = "login"
  session_duration = "24h"
  include = [{
    email = {
      email = "vitor.amaral10@gmail.com"
    }
  }]
}

resource "cloudflare_zero_trust_access_application" "access_arca" {
  account_id                 = "6d8854bed30741da26ea83513b2b8b2f"
  app_launcher_visible       = true
  auto_redirect_to_identity  = false
  domain                     = "arca.vitormelo.dev.br"
  enable_binding_cookie      = false
  http_only_cookie_attribute = true
  name                       = "arca"
  options_preflight_bypass   = false
  session_duration           = "720h"
  type                       = "self_hosted"
  destinations = [{
    type = "public"
    uri  = "arca.vitormelo.dev.br"
  }]
  policies = [{
    id         = "e3749871-07bb-4425-90e8-6d19a55f8e6b"
    precedence = 1
  }]
}

resource "cloudflare_zero_trust_access_application" "access_garage" {
  account_id                 = "6d8854bed30741da26ea83513b2b8b2f"
  app_launcher_visible       = true
  auto_redirect_to_identity  = false
  domain                     = "garage.vitormelo.dev.br"
  enable_binding_cookie      = false
  http_only_cookie_attribute = true
  name                       = "garage"
  options_preflight_bypass   = false
  session_duration           = "720h"
  type                       = "self_hosted"
  destinations = [{
    type = "public"
    uri  = "garage.vitormelo.dev.br"
  }]
  policies = [{
    id         = "7b50c782-df47-4aa6-b2d9-c1bafc7f686d"
    precedence = 1
  }]
}

resource "cloudflare_zero_trust_access_application" "access_acervo_hub" {
  account_id                 = "6d8854bed30741da26ea83513b2b8b2f"
  app_launcher_visible       = true
  auto_redirect_to_identity  = false
  domain                     = "acervo.vitormelo.dev.br"
  enable_binding_cookie      = false
  http_only_cookie_attribute = true
  name                       = "acervo-hub"
  options_preflight_bypass   = false
  session_duration           = "720h"
  type                       = "self_hosted"
  destinations = [{
    type = "public"
    uri  = "acervo.vitormelo.dev.br"
  }]
  policies = [{
    id         = cloudflare_zero_trust_access_policy.policy_login.id
    precedence = 1
  }]
}

resource "cloudflare_zero_trust_access_application" "access_ssh" {
  account_id                 = "6d8854bed30741da26ea83513b2b8b2f"
  allowed_idps               = ["de047aba-c458-499f-9158-4387e936ff57"]
  app_launcher_visible       = true
  auto_redirect_to_identity  = true
  domain                     = "ssh.vitormelo.dev.br"
  enable_binding_cookie      = false
  http_only_cookie_attribute = false
  logo_url                   = "https://www.dmuth.org/wp-content/uploads/2020/01/ssh.png"
  name                       = "ssh"
  options_preflight_bypass   = false
  session_duration           = "6h"
  type                       = "ssh"
  destinations = [{
    type = "public"
    uri  = "ssh.vitormelo.dev.br"
  }]
  policies = [{
    id         = cloudflare_zero_trust_access_policy.policy_login.id
    precedence = 1
  }]
}

resource "cloudflare_zero_trust_access_application" "access_mongo" {
  account_id                 = "6d8854bed30741da26ea83513b2b8b2f"
  allowed_idps               = ["de047aba-c458-499f-9158-4387e936ff57"]
  app_launcher_visible       = true
  auto_redirect_to_identity  = true
  domain                     = "db-mongo.vitormelo.dev.br"
  enable_binding_cookie      = false
  http_only_cookie_attribute = false
  name                       = "mongo"
  options_preflight_bypass   = false
  session_duration           = "6h"
  type                       = "self_hosted"
  destinations = [{
    type = "public"
    uri  = "db-mongo.vitormelo.dev.br"
  }]
  policies = [{
    id         = cloudflare_zero_trust_access_policy.policy_login.id
    precedence = 1
  }]
}

resource "cloudflare_zero_trust_access_application" "access_app_launcher" {
  account_id                   = "6d8854bed30741da26ea83513b2b8b2f"
  allowed_idps                 = ["de047aba-c458-499f-9158-4387e936ff57"]
  auto_redirect_to_identity    = true
  domain                       = "vitormelo.cloudflareaccess.com"
  name                         = "App Launcher"
  session_duration             = "6h"
  skip_app_launcher_login_page = false
  type                         = "app_launcher"
  landing_page_design          = {}
  policies = [{
    id         = cloudflare_zero_trust_access_policy.policy_login.id
    precedence = 1
  }]
}

resource "cloudflare_zero_trust_access_identity_provider" "idp_pin_email" {
  name       = ""
  account_id = "6d8854bed30741da26ea83513b2b8b2f"
  type       = "onetimepin"
  config     = {}
}

resource "cloudflare_zero_trust_access_identity_provider" "idp_github" {
  account_id = "6d8854bed30741da26ea83513b2b8b2f"
  name       = "GitHub"
  type       = "github"
  config = {
    client_id = "Ov23limiQGsVkeMa098B"
  }
  scim_config = {
    enabled                  = false
    group_member_deprovision = false
    identity_update_behavior = "no_action"
    seat_deprovision         = false
    user_deprovision         = false
  }
}

