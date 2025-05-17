resource "hcloud_server" "server" {
  name        = var.server_name
  image       = var.server_image
  server_type = var.server_type
  public_net {
    ipv4_enabled = true
    ipv4 = hcloud_primary_ip.primary_ip.id
    ipv6_enabled = false
  }
  backups = var.server_backups
  firewall_ids = [hcloud_firewall.firewall.id]
}
