resource "cloudflare_zero_trust_access_policy" "terraform_managed_resource_811f0681-a998-4a0a-8917-34e23de9bf7a_0" {
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

resource "cloudflare_zero_trust_access_application" "terraform_managed_resource_5a77be82-014f-4eaa-b3f1-e661d75d0b8d_0" {
  account_id                 = "6d8854bed30741da26ea83513b2b8b2f"
  app_launcher_visible       = true
  auto_redirect_to_identity  = false
  domain                     = "acenup-painel.vitormelo.dev.br"
  enable_binding_cookie      = false
  http_only_cookie_attribute = true
  name                       = "acenup-painel"
  options_preflight_bypass   = false
  session_duration           = "720h"
  type                       = "self_hosted"
  destinations = [{
    type = "public"
    uri  = "acenup-painel.vitormelo.dev.br"
  }]
  policies = [{
    id         = "48dad875-322d-4112-83cd-0c33c13c1773"
    precedence = 1
  }]
}

resource "cloudflare_zero_trust_access_application" "terraform_managed_resource_319fa8a1-2e56-418e-b514-55957d63a5da_1" {
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

resource "cloudflare_zero_trust_access_application" "terraform_managed_resource_237bdee1-20b8-4443-8e2a-e7aa87368b54_2" {
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

resource "cloudflare_zero_trust_access_application" "terraform_managed_resource_acd193f6-4478-4927-9169-97428b3cd4a7_3" {
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
    id         = cloudflare_zero_trust_access_policy.terraform_managed_resource_811f0681-a998-4a0a-8917-34e23de9bf7a_0.id
    precedence = 1
  }]
}

resource "cloudflare_zero_trust_access_application" "terraform_managed_resource_ebea28a5-5468-4953-82d4-513f460f306b_4" {
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
    id         = cloudflare_zero_trust_access_policy.terraform_managed_resource_811f0681-a998-4a0a-8917-34e23de9bf7a_0.id
    precedence = 1
  }]
}

resource "cloudflare_zero_trust_access_application" "terraform_managed_resource_3d286f0d-c4b5-4e1b-b432-7097b6fdb198_5" {
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
    id         = cloudflare_zero_trust_access_policy.terraform_managed_resource_811f0681-a998-4a0a-8917-34e23de9bf7a_0.id
    precedence = 1
  }]
}

resource "cloudflare_zero_trust_access_application" "terraform_managed_resource_386e5ab7-6ef7-4cc6-82ba-28bb29b839e2_6" {
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
    id         = cloudflare_zero_trust_access_policy.terraform_managed_resource_811f0681-a998-4a0a-8917-34e23de9bf7a_0.id
    precedence = 1
  }]
}

resource "cloudflare_zero_trust_access_identity_provider" "terraform_managed_resource_cd18da18-dda4-4790-91f0-41085470bf27_0" {
  name       = ""
  account_id = "6d8854bed30741da26ea83513b2b8b2f"
  type       = "onetimepin"
  config     = {}
}

resource "cloudflare_zero_trust_access_identity_provider" "terraform_managed_resource_de047aba-c458-499f-9158-4387e936ff57_1" {
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

