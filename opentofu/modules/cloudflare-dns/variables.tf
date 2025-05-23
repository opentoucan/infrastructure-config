variable "name" {
  type        = string
  description = "Name of DNS record"
}

variable "type" {
  type        = string
  description = "Record type i.e. A or CNAME"
}

variable "zone_id" {
  type        = string
  description = "Zone for the DNS record"
}

variable "ttl" {
  type        = number
  description = "Time To Live for the DNS record in seconds, defaults to 1 (automatic)"
  default     = 1
}

variable "content" {
  type        = optional(string)
  description = "Content of the DNS record (i.e. IP Address for A records and DNS name for CNAMES)"
  sensitive   = true
}

variable "comment" {
  type        = optional(string)
  description = "Comments or notes about the DNS record"
}

variable "proxied" {
  type        = optional(bool)
  description = "Whether to enable cloudflare proxying for the record"
}
