resource "cloudflare_email_routing_address" "destino_isis_lorena250" {
  account_id = "6d8854bed30741da26ea83513b2b8b2f"
  email      = "isis.lorena250@gmail.com"
  status     = "verified"

  lifecycle {
    ignore_changes = all
  }
}

resource "cloudflare_email_routing_address" "destino_vitor_amaral10" {
  account_id = "6d8854bed30741da26ea83513b2b8b2f"
  email      = "vitor.amaral10@gmail.com"
  status     = "verified"

  lifecycle {
    ignore_changes = all
  }
}

