resource "mongodbatlas_project_ip_access_list" "ip_access_list" {
  for_each   = toset(var.ip_access_list)
  project_id = mongodbatlas_project.project.id
  ip_address = each.value
  comment    = "ip address for accessing project"
}