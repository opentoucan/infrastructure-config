variable "name" {
  type        = string
  description = "Name of DNS record"
}

variable "type" {
  type        = string
  description = "Record type i.e. A or CNAME"
}

variable "ttl" {
  type        = number
  description = "Time To Live for the DNS record in seconds, defaults to 1 (automatic)"
  default     = 1
}

variable "content" {
  type        = string
  description = "Content of the DNS record (i.e. IP Address for A records and DNS name for CNAMES)"
  sensitive   = true
}

variable "comment" {
  type        = string
  default     = null
  description = "Comments or notes about the DNS record"
}

variable "proxied" {
  type        = bool
  description = "Whether to enable cloudflare proxying for the record"
}
