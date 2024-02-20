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
  team_roles = [
    {
      name  = "devops"
      roles = ["GROUP_OWNER"]
    },
    {
      name  = "developers"
      roles = ["GROUP_READ_ONLY"]
    }
  ]

  teams = {
    for index, val in local.team_roles :
    lookup(tomap({ for key, value in data.terraform_remote_state.rs_opentoucan.outputs.atlas_teams : value.team_name => value }), val.name).team_id => val.roles
  }
}