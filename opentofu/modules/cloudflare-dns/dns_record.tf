resource "cloudflare_dns_record" "dns_record" {
  zone_id = data.cloudflare_zones.opentoucan.result[0].id
  comment = var.comment
  content = var.content
  name    = var.name
  proxied = var.proxied
  ttl     = var.ttl
  type    = var.type
}
