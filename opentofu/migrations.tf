import {
  for_each = local.mongodbatlas_teams_with_ids

  to       = module.mongodb.mongodbatlas_team_project_assignment.team_project_assignment[each.key]
  id       = "${module.mongodb.mongodbatlas_project.project.id}/${each.key}"
}
