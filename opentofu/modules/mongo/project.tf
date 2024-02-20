resource "mongodbatlas_project" "project" {
  name   = var.project_name
  org_id = data.mongodbatlas_roles_org_id.org.org_id

  dynamic "teams" {
    for_each = tomap(var.teams)
    iterator = item
    content {
      team_id    = item.key
      role_names = item.value.roles
    }
  }
}