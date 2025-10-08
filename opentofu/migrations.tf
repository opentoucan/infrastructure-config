removed {
  from = module.mongodb.mongodbatlas_cluster.cluster

  lifecycle {
    destroy = false
  }
}
