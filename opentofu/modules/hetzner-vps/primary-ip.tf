resource "hcloud_primary_ip" "primary_ip" {
  name          = "primary_ip"
  type          = "ipv4"
  assignee_type = "server"
  auto_delete   = false
}
