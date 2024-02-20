locals {
  project_name = "development"
  clusters = [{
    name                  = "discord-bot"
    region_name           = "EUROPE_NORTH"
    provider_name         = "TENANT"
    backing_provider_name = "AZURE"
    provider_instance     = "M0"
    cluster_type          = "REPLICASET"
    cloud_backup          = false
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