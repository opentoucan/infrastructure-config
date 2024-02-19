variable projects {
    type = map(object({
        rbac = list(object({
            team_name  = string
            role_names = list(string)
        }))
    }))
    description = "Map of clusters with the key as the project name"
}

variable clusters {
    type = list(object({
        name              = string
        project_name      = string
        region_name       = string
        provider_name     = string
        provider_instance = string
    }))
    description = "Map of clusters with the key as the project name"
}


variable teams {
    type = map(object({
        users = list(string)
    }))
    description = "List of teams with name and email addresses for users"
}