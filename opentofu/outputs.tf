output "hetzner_server_ip" {
  value       = module.hetzner-vps.server_ip
  description = "IP address of the Hetzner server"
  sensitive   = true
}
