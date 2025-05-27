locals {
  mongodbatlas_teams_with_ids = {
    for index, val in var.mongodbatlas_team_roles :
    "${lookup(tomap({ for key, value in data.mongodbatlas_team.teams : value.name => value }), val.name).team_id}" => {
      roles = val.roles
    }
  }

  s3_bucket_endpoint = "${var.s3_bucket_region}.${var.s3_bucket_domain}"
}
