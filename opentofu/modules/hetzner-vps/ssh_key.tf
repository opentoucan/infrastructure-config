resource "hcloud_ssh_key" "ssh_key" {
  for_each = {
    for ssh_key in var.ssh_keys :
    ssh_key.key => ssh_key
  }
  name       = each.value.name
  public_key = each.value.key
}
