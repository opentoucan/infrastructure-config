data "cloudflare_zones" "opentoucan" {
  filter {
    name = "opentoucan.com"
  }
}
