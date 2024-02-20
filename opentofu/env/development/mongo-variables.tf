variable "developers" {
  type        = list(string)
  description = "Email addresses for the developers"
  sensitive   = true
}

variable "devops" {
  type        = list(string)
  description = "Email addresses for the devops engineers"
  sensitive   = true
}

variable "ip_access_list" {
  type        = list(string)
  sensitive   = true
  description = "IP Address list for accessing project"
}