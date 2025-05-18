locals {
  datacentres = { for dc in data.hcloud_datacenters.all.datacenters : dc.location => dc }
}
