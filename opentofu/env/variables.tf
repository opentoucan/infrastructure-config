variable "atlas_teams" {
  type = list(object({
    name      = string
    usernames = list(string)
  }))

  description = "List of teams with name and email addresses for users"
}