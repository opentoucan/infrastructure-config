resource "mongodbatlas_cluster" "cluster" {
  for_each = {
    for cluster in var.clusters :
    "${cluster.project_name}-${cluster.name}" => cluster
  }
  project_id   = lookup(tomap({ for key, value in mongodbatlas_project.project : value.name => value }), each.value.project_name).id
  name         = each.value.name
  cluster_type = "REPLICASET"
  replication_specs {
    num_shards = 1
    regions_config {
      region_name = each.value.region_name
    }
  }
  cloud_backup = true

  # Provider Settings "block"
  provider_name               = each.value.provider_name
  provider_instance_size_name = each.value.provider_instance
}