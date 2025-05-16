variable "environment" {
  type        = string
  description = "Environment name"
}

variable "mongodbatlas_public_key" {
  type        = string
  description = "Public key for authenticating against mongodb atlas"
  sensitive   = true
}

variable "mongodbatlas_private_key" {
  type        = string
  description = "Private key for authenticating against mongodb atlas"
  sensitive   = true
}

variable "mongodbatlas_team_roles" {
  type = list(object({
    name = string
    roles = list(string)
  }))
  description = "List of objects containing a team name and a list of roles to assign for a project"
}

variable "mongodbatlas_ip_access_list" {
  type        = list(string)
  description = "IP Address list for accessing project"
}

variable "mongo_atlas_clusters" {
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

variable "s3_endpoint" {
  type        = string
  description = "S3 endpoint url for creating bucket"
  sensitive = true
}

variable "s3_server_ids" {
  type        = list(object({
    client    = string
    id        = string
  }))
  description = "Map of clients and server IDs for creating S3 buckets"
}
