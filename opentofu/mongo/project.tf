resource "mongodbatlas_project" "project" {
  for_each = var.projects
  name     = each.key
  org_id   = data.mongodbatlas_roles_org_id.org.org_id

  dynamic "teams" {
    for_each = each.value.rbac
    iterator = item
    content {
      team_id    = lookup(tomap({ for key, value in mongodbatlas_teams.team : value.name => value }), item.value.team_name).team_id
      role_names = item.value.role_names
    }
  }
}