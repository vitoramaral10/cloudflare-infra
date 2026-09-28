resource "cloudflare_zone_setting" "vitormelo_ssl" {
  setting_id = "ssl"
  zone_id    = "4b5854dc38bb066f8cb728d78e60ce53"
  value      = "strict"
}

resource "cloudflare_zone_setting" "vitormelo_always_use_https" {
  setting_id = "always_use_https"
  zone_id    = "4b5854dc38bb066f8cb728d78e60ce53"
  value      = "on"
}

resource "cloudflare_zone_setting" "vitormelo_min_tls_version" {
  setting_id = "min_tls_version"
  zone_id    = "4b5854dc38bb066f8cb728d78e60ce53"
  value      = "1.3"
}

resource "cloudflare_zone_setting" "vitormelo_automatic_https_rewrites" {
  setting_id = "automatic_https_rewrites"
  zone_id    = "4b5854dc38bb066f8cb728d78e60ce53"
  value      = "on"
}

resource "cloudflare_zone_setting" "vitormelo_security_header" {
  setting_id = "security_header"
  zone_id    = "4b5854dc38bb066f8cb728d78e60ce53"
  value = {
    strict_transport_security = {
      enabled            = true
      include_subdomains = true
      max_age            = 15552000
      nosniff            = true
      preload            = true
    }
  }
}

resource "cloudflare_zone_setting" "vitormelo_security_level" {
  setting_id = "security_level"
  zone_id    = "4b5854dc38bb066f8cb728d78e60ce53"
  value      = "essentially_off"
}

resource "cloudflare_zone_setting" "vitormelo_browser_check" {
  setting_id = "browser_check"
  zone_id    = "4b5854dc38bb066f8cb728d78e60ce53"
  value      = "off"
}

resource "cloudflare_zone_setting" "vitormelo_http3" {
  setting_id = "http3"
  zone_id    = "4b5854dc38bb066f8cb728d78e60ce53"
  value      = "on"
}

resource "cloudflare_zone_setting" "vitormelo_always_online" {
  setting_id = "always_online"
  zone_id    = "4b5854dc38bb066f8cb728d78e60ce53"
  value      = "off"
}

resource "cloudflare_zone_setting" "vitormelo_email_obfuscation" {
  setting_id = "email_obfuscation"
  zone_id    = "4b5854dc38bb066f8cb728d78e60ce53"
  value      = "off"
}

resource "cloudflare_zone_setting" "vitormelo_websockets" {
  setting_id = "websockets"
  zone_id    = "4b5854dc38bb066f8cb728d78e60ce53"
  value      = "on"
}

