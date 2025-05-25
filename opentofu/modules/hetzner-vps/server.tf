resource "hcloud_server" "server" {
  name        = var.server_name
  image       = var.server_image
  server_type = var.server_type
  datacenter  = local.datacentres["${var.server_location}"].name
  public_net {
    ipv4_enabled = true
    ipv4         = hcloud_primary_ip.primary_ip.id
    ipv6_enabled = false
  }
  backups      = var.server_backups
  firewall_ids = [hcloud_firewall.firewall.id]
  ssh_keys     = [for ssh_key in var.ssh_keys : ssh_key.name]
  depends_on   = [hcloud_ssh_key.ssh_key]
}
