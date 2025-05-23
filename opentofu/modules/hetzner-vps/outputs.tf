output "server_ip" {
  value       = hcloud_primary_ip.primary_ip
  description = "IP address of the server"
  sensitive   = true
}
