
resource "cloudflare_zone" "terraform-cloudfeeling-com" {
  # required
  account_id = var.account_id
  zone       = "terraform.cloudfeeling.com"
  # optional
  plan = "enterprise"
  type = "full" #partial for CNAME setup
  jump_start = false #scan existing DNS records
  paused = false #bypass Cloudflare
}

resource "cloudflare_zone_dnssec" "terraform-cloudfeeling-com" {
  zone_id = cloudflare_zone.terraform-cloudfeeling-com.id
}