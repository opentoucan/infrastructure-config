import {
  for_each = local.mongodbatlas_teams_with_ids

  to       = module.mongodb.mongodbatlas_team_project_assignment.team_project_assignment[each.key]
  id       = "65d4a3bf160f504f2547c2cd/${each.key}"
}
