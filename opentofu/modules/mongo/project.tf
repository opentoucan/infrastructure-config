resource "mongodbatlas_project" "project" {
  name   = var.project_name
  org_id = data.mongodbatlas_roles_org_id.org.org_id

  dynamic "teams" {
    for_each = {
      for team in var.teams:
      team.team_id => team
    }

    content {
      team_id    = each.key
      role_names = each.value.roles
    }
  }
}