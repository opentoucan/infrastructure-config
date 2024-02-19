projects = {
  production = {
    rbac = [
      {
        team_name  = "devops-engineers"
        role_names = ["GROUP_OWNER"]
      },
      {
        team_name  = "developers"
        role_names = ["GROUP_DATA_ACCESS_READ_ONLY"]
      }
    ]
  },
  development = {
    rbac = [
      {
        team_name  = "devops-engineers"
        role_names = ["GROUP_OWNER"]
      },
      {
        team_name  = "developers"
        role_names = ["GROUP_OWNER"]
      }
    ]
  }
}

clusters = [
  {
    name              = "dev-discord-bot",
    project_name      = "development"
    region_name       = "EUROPE_NORTH"
    provider_name     = "AZURE"
    provider_instance = "M0"
  },
  {
    name              = "prod-discord-bot"
    project_name      = "production"
    region_name       = "EUROPE_NORTH"
    provider_name     = "AZURE"
    provider_instance = "M2"
  }
]
teams = {
  devops-engineers = {
    users = []
  }
  developers = {
    users = []
  }
}