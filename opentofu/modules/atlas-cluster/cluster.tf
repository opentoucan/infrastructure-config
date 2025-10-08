resource "mongodbatlas_advanced_cluster" "cluster" {
  for_each = {
    for cluster in var.clusters :
    cluster.name => cluster
  }
  project_id        = mongodbatlas_project.project.id
  name              = each.value.name
  cluster_type      = each.value.cluster_type
  backup_enabled    = each.value.backup_enabled
  mongo_db_version  = "8.0.14"
  replication_specs = [
    {
      region_configs = [
        {
          provider_name         = each.value.provider_name
          backing_provider_name = each.value.backing_provider_name
          region_name           = each.value.region_name
          priority              = each.value.priority
          electable_specs = {
            instance_size = each.value.instance_size
            node_count    = 1
          }
        }
      ]
    }
  ]
}
