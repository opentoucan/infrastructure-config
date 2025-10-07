moved {
  from = module.mongodb.mongodbatlas_cluster.cluster["discord-bot"]
  to   = module.mongodb.mongodbatlas_advanced_cluster.cluster["discord-bot"]
}
