
terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "4.0.0-rc2"
    }
  }
}

provider "cloudflare" {
  api_token = var.api_token
}
