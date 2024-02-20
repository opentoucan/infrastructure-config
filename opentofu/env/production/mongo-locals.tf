locals {
  project_name = "production"
  clusters = [{
    name                  = "discord-bot"
    region_name           = "EUROPE_NORTH"
    provider_name         = "TENANT"
    backing_provider_name = "AZURE"
    provider_instance     = "M2"
    cluster_type          = "REPLICASET"
    cloud_backup          = true
  }]
  teams = {
    devops = {
      roles = ["GROUP_OWNER"]
      users = var.devops
    },
    developers = {
      roles = ["GROUP_READ_ONLY"]
      users = var.devops
    }
  }
}