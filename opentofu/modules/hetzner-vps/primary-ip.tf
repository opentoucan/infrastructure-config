resource "hcloud_primary_ip" "primary_ip" {
  name          = "primary_ip"
  type          = "ipv4"
  assignee_type = "server"
  datacenter    = local.datacentres["${var.server_location}"].name
  auto_delete   = false
}
