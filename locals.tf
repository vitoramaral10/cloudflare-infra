locals {
  conta = "6d8854bed30741da26ea83513b2b8b2f"

  zonas = {
    vitormelo = "4b5854dc38bb066f8cb728d78e60ce53" # vitormelo.dev.br
    hexpedal  = "57565fcb2fbbe00496b1c3e2430c0c9a" # hexpedal.app
  }

  tuneis = {
    homelab_docker    = "9ed70697-1fae-4486-85a0-bd95129c7030" # container do stack tunnel
    homelab_baremetal = "79dfd3e9-3de9-444e-bde6-b5e77c6d5695" # cloudflared.service do host
  }
}
