provider "mongodbatlas" {
  public_key  = var.mongodbatlas_public_key
  private_key = var.mongodbatlas_private_key
}
provider "minio" {
  minio_server   = var.s3_endpoint
  minio_user     = var.s3_access_key
  minio_password = var.s3_secret_key
  minio_region   = var.s3_region
  minio_ssl      = true
}

module "mongodb" {
  source         = "./modules/atlas-cluster"
  org_id         = data.mongodbatlas_roles_org_id.org.org_id
  project_name   = var.environment
  clusters       = var.mongo_atlas_clusters
  teams          = local.mongodbatlas_teams_with_ids
  ip_access_list = var.mongodbatlas_ip_access_list
}

module "s3" {
  source       = "./modules/s3"
  bucket_names = local.s3_bucket_names
}
