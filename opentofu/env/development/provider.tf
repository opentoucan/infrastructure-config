provider "mongodbatlas" {}

module "mongodb" {
  source       = "../../modules/mongo"
  project_name = local.project_name
  clusters     = local.clusters
  teams        = local.teams
}