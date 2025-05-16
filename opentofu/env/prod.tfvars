mongo_atlas_clusters=[{
    name                  = "discord-bot"
    region_name           = "EUROPE_NORTH"
    provider_name         = "TENANT"
    backing_provider_name = "AZURE"
    provider_instance     = "M0"
    cluster_type          = "REPLICASET"
    cloud_backup          = false
}]
s3_server_ids = [
  {
    client = "discord",
    id = "409696112144810014"
  }
]
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
