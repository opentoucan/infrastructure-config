data "mongodbatlas_roles_org_id" "org" {}
data "mongodbatlas_teams" "team" {
  for_each = mongodbatlas_teams.team
  name     = each.value.name
  org_id   = data.mongodbatlas_roles_org_id.org.id
}