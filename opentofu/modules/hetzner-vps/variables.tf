variable "server_name" {
  type        = string
  description = "VPS server name"
}

variable "server_image" {
  type        = string
  description = "OS Base image type"
}

variable "server_type" {
  type        = string
  description = "Server hardware tier"
}

variable "server_backups" {
  type        = bool
  description = "Enable backups"
  default     = false
}

variable "ssh_keys" {
  type = list(object({
    name = string
    key  = string
  }))
  description = "Public SSH Keys"
}

variable "firewall_rules" {
  type = list(object({
    direction  = string
    protocol   = string
    port       = optional(string)
    source_ips = list(string)
  }))
}
