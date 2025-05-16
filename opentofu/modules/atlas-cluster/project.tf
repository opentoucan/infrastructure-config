resource "mongodbatlas_project" "project" {
  name   = var.project_name
  org_id = var.org_id

  dynamic "teams" {
    for_each = tomap(var.teams)
    iterator = item
    content {
      team_id    = item.key
      role_names = item.value.roles
    }
  }
}

resource "mongodbatlas_project_ip_access_list" "ip_access_list" {
  for_each   = toset(var.ip_access_list)
  project_id = mongodbatlas_project.project.id
  cidr_block = each.value
  comment    = "ip address for accessing project"
}
