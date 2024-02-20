resource "mongodbatlas_teams" "team" {
  for_each = {
    for team in var.atlas_teams :
    team.name => team
  }
  org_id    = data.mongodbatlas_roles_org_id.org.org_id
  name      = each.value.name
  usernames = each.value.usernames
}