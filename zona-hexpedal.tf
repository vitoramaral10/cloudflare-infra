resource "cloudflare_zone_setting" "hexpedal_ssl" {
  setting_id = "ssl"
  zone_id    = "57565fcb2fbbe00496b1c3e2430c0c9a"
  value      = "strict"
}

resource "cloudflare_zone_setting" "hexpedal_always_use_https" {
  setting_id = "always_use_https"
  zone_id    = "57565fcb2fbbe00496b1c3e2430c0c9a"
  value      = "on"
}

resource "cloudflare_zone_setting" "hexpedal_min_tls_version" {
  setting_id = "min_tls_version"
  zone_id    = "57565fcb2fbbe00496b1c3e2430c0c9a"
  value      = "1.2"
}

resource "cloudflare_zone_setting" "hexpedal_automatic_https_rewrites" {
  setting_id = "automatic_https_rewrites"
  zone_id    = "57565fcb2fbbe00496b1c3e2430c0c9a"
  value      = "on"
}

resource "cloudflare_zone_setting" "hexpedal_security_header" {
  setting_id = "security_header"
  zone_id    = "57565fcb2fbbe00496b1c3e2430c0c9a"
  value = {
    strict_transport_security = {
      enabled            = true
      include_subdomains = true
      max_age            = 15552000
      nosniff            = true
      preload            = false
    }
  }
}

resource "cloudflare_zone_setting" "hexpedal_security_level" {
  setting_id = "security_level"
  zone_id    = "57565fcb2fbbe00496b1c3e2430c0c9a"
  value      = "medium"
}

resource "cloudflare_zone_setting" "hexpedal_browser_check" {
  setting_id = "browser_check"
  zone_id    = "57565fcb2fbbe00496b1c3e2430c0c9a"
  value      = "on"
}

resource "cloudflare_zone_setting" "hexpedal_http3" {
  setting_id = "http3"
  zone_id    = "57565fcb2fbbe00496b1c3e2430c0c9a"
  value      = "on"
}

resource "cloudflare_zone_setting" "hexpedal_always_online" {
  setting_id = "always_online"
  zone_id    = "57565fcb2fbbe00496b1c3e2430c0c9a"
  value      = "off"
}

resource "cloudflare_zone_setting" "hexpedal_email_obfuscation" {
  setting_id = "email_obfuscation"
  zone_id    = "57565fcb2fbbe00496b1c3e2430c0c9a"
  value      = "on"
}

resource "cloudflare_zone_setting" "hexpedal_websockets" {
  setting_id = "websockets"
  zone_id    = "57565fcb2fbbe00496b1c3e2430c0c9a"
  value      = "on"
}

