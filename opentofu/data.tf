data "mongodbatlas_roles_org_id" "org" {}

data "mongodbatlas_team" "teams" {
  for_each = {
    for index, team in var.mongodbatlas_team_roles :
    team.name => team
  }
  org_id = data.mongodbatlas_roles_org_id.org.org_id
  name   = each.value.name
}

data "dns_a_record_set" "access_ips" {
  for_each = toset(var.dns_access_list)
  host     = each.key
}
