resource "hcloud_firewall" "firewall" {
  name = "firewall"
  dynamic "rule" {
    for_each = var.firewall_rules
    iterator = rule
    content {
      direction  = rule.value.direction
      protocol   = rule.value.protocol
      port       = rule.value.port
      source_ips = rule.value.source_ips
    }
  }
}
