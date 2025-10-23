locals {
  mongodbatlas_teams_with_ids = {
    for index, val in var.mongodbatlas_team_roles :
    "${lookup(tomap({ for key, value in data.mongodbatlas_team.teams : value.name => value }), val.name).team_id}" => {
      roles = val.roles
    }
  }

  s3_bucket_endpoint = "${var.s3_bucket_region}.${var.s3_bucket_domain}"

  ip_access_list = flatten([
    for key in var.ip_access_list :
    module.ip.ip
  ])

  hcloud_postgres_firewall_rules = [
    {
      direction  = "in"
      protocol   = "tcp"
      port       = "22"
      source_ips = local.ip_access_list
    },
    {
      direction  = "in"
      protocol   = "tcp"
      port       = "5432"
      source_ips = local.ip_access_list
    },
    {
      direction  = "in"
      protocol   = "tcp"
      port       = "9854"
      source_ips = local.ip_access_list
    }
  ]

  hcloud_firewall_rules = setunion(var.hcloud_firewall_rules, local.hcloud_postgres_firewall_rules)
}
