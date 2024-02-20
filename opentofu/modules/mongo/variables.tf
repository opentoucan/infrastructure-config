variable "project_name" {
  type        = string
  description = "Map of clusters with the key as the project name"
}

variable "clusters" {
  type = list(object({
    name                  = string
    region_name           = string
    provider_name         = string
    provider_instance     = string
    cluster_type          = string
    backing_provider_name = string
    cloud_backup          = bool
  }))
  description = "List of clusters to create within the project"
}


variable "teams" {
  type = map(object({
    users = list(string)
    roles = list(string)
  }))
  description = "List of teams with name and email addresses for users"
}

variable "ip_access_list" {
  type        = list(string)
  sensitive   = true
  description = "IP Address list for accessing project"
}