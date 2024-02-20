output "teams" {
  value = {
    for team_id, team in data.mongodbatlas_teams.team :
    team_id => {
      team_id   = team.team_id
      team_name = team.name
    }
  }
}