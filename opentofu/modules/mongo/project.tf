resource "mongodbatlas_project" "project" {
  name     = var.project_name
  org_id   = data.mongodbatlas_roles_org_id.org.org_id

  dynamic "teams" {
    for_each = var.teams

    content {
      team_id    = mongodbatlas_teams.team[each.key].team_id
      role_names = teams.value.role_names
    }
  }
}