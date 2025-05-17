mongo_atlas_clusters=[{
    name                  = "discord-bot"
    region_name           = "EUROPE_NORTH"
    provider_name         = "TENANT"
    backing_provider_name = "AZURE"
    provider_instance     = "M0"
    cluster_type          = "REPLICASET"
    cloud_backup          = false
}]
mongodbatlas_team_roles = [
  {
    name  = "devops"
    roles = ["GROUP_OWNER"]
  },
  {
    name  = "developers"
    roles = ["GROUP_READ_ONLY"]
  }
]
mongodbatlas_ip_access_list = [
  "0.0.0.0/0"
]

s3_server_ids = [
  {
    client = "discord",
    id = "409696112144810014"
  }
]

hcloud_server_name    = "postgres"
hcloud_server_image   = "debian-12"
hcloud_server_type    = "cx22"
hcloud_server_backups = true
hcloud_ssh_keys = [
  {
    name = "Jared"
    key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHz/h+WzkR+AZYNvfzdbp/lUFIqdew+xErtSirm1XhPS"
  }
]
hcloud_firewall_rules = [
  {
    direction  = "in"
    protocol   = "tcp"
    port       = "22"
    source_ips = ["0.0.0.0/0", "::/0"]
  },
  {
    direction = "in"
    protocol  = "icmp"
    source_ips = ["0.0.0.0/0", "::/0"]
  },
  {
    direction  = "in"
    protocol   = "tcp"
    port       = "5432"
    source_ips = ["0.0.0.0/0", "::/0"]
  }
]
