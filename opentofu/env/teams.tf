resource "mongodbatlas_teams" "team" {
  for_each  = var.teams
  org_id    = data.mongodbatlas_roles_org_id.org.org_id
  name      = each.key
  usernames = each.value
}