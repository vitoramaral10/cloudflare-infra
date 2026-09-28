resource "cloudflare_workers_custom_domain" "worker_site" {
  account_id  = "6d8854bed30741da26ea83513b2b8b2f"
  environment = "production"
  hostname    = "vitormelo.dev.br"
  service     = "site"
  zone_id     = "4b5854dc38bb066f8cb728d78e60ce53"
  zone_name   = "vitormelo.dev.br"
}

resource "cloudflare_workers_custom_domain" "worker_detailer_os" {
  account_id  = "6d8854bed30741da26ea83513b2b8b2f"
  environment = "production"
  hostname    = "detailer-os.vitormelo.dev.br"
  service     = "detailer-os"
  zone_id     = "4b5854dc38bb066f8cb728d78e60ce53"
  zone_name   = "vitormelo.dev.br"
}

resource "cloudflare_workers_custom_domain" "worker_hexpedal_site" {
  account_id  = "6d8854bed30741da26ea83513b2b8b2f"
  environment = "production"
  hostname    = "hexpedal.app"
  service     = "hexpedal-site"
  zone_id     = "57565fcb2fbbe00496b1c3e2430c0c9a"
  zone_name   = "hexpedal.app"
}

resource "cloudflare_workers_custom_domain" "worker_clinic_page_demo" {
  account_id  = "6d8854bed30741da26ea83513b2b8b2f"
  environment = "production"
  hostname    = "clinic-page-demo.vitormelo.dev.br"
  service     = "clinic-page-demo"
  zone_id     = "4b5854dc38bb066f8cb728d78e60ce53"
  zone_name   = "vitormelo.dev.br"
}

resource "cloudflare_workers_custom_domain" "worker_hexpedal_admin" {
  account_id  = "6d8854bed30741da26ea83513b2b8b2f"
  environment = "production"
  hostname    = "admin.hexpedal.app"
  service     = "hexpedal-admin"
  zone_id     = "57565fcb2fbbe00496b1c3e2430c0c9a"
  zone_name   = "hexpedal.app"
}

