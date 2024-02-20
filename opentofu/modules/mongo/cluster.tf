resource "mongodbatlas_cluster" "cluster" {
  for_each = {
    for cluster in var.clusters :
    cluster.name => cluster
  }
  project_id   = mongodbatlas_project.project.id
  name         = each.value.name
  cluster_type = each.value.cluster_type
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
  backing_provider_name       = each.value.backing_provider_name
  provider_region_name        = each.value.region_name 
}