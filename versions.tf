terraform {
  required_version = ">= 1.5"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.26"
    }
  }
}

# O token vem de CLOUDFLARE_API_TOKEN (ver .env.example).
provider "cloudflare" {}
