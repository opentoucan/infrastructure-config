resource "mongodbatlas_project" "project" {
  name   = var.project_name
  org_id = var.org_id

  lifecycle {
    ignore_changes = ["teams"]
  }
}

resource "mongodbatlas_team_project_assignment" "team_project_assignment" {
  for_each = tomap(var.teams)

  project_id = mongodbatlas_project.project.id
  team_id    = each.key
  role_names = each.value.roles

}

resource "mongodbatlas_project_ip_access_list" "ip_access_list" {
  for_each   = toset(var.ip_access_list)

  project_id = mongodbatlas_project.project.id
  cidr_block = each.value
  comment    = "ip address for accessing project"
}
