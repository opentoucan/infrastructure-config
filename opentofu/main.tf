module "mongodbatlas" {
  source = "./mongodbatlas"

  projects = var.projects
  clusters = var.clusters
  teams    = var.teams
}