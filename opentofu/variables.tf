variable "environment" {
  type        = string
  description = "Environment name"
}

variable "mongodbatlas_team_roles" {
  type = list(object({
    name  = string
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

variable "s3_bucket_region" {
  type        = string
  description = "Region for the S3 bucket"
}

variable "s3_bucket_server_ids" {
  type = list(object({
    client = string
    id     = string
  }))
  description = "Map of clients and server IDs for creating S3 buckets"
}

variable "hcloud_server_name" {
  type        = string
  description = "VPS server name"
}

variable "hcloud_server_image" {
  type        = string
  description = "OS Base image type"
}

variable "hcloud_server_type" {
  type        = string
  description = "Hetzner VPS server hardware tier"
}

variable "hcloud_server_backups" {
  type        = bool
  description = "Enable Hetzner server backups"
  default     = false
}

variable "hcloud_ssh_keys" {
  type = list(object({
    name = string
    key  = string
  }))
  description = "Public SSH Keys"
}

variable "hcloud_firewall_rules" {
  type = list(object({
    direction  = string
    protocol   = string
    port       = optional(string)
    source_ips = list(string)
  }))
}
