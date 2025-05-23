provider "mongodbatlas" {}

provider "minio" {
  minio_server = local.s3_bucket_endpoint
  minio_region = var.s3_bucket_region
  minio_ssl    = true
}

provider "hcloud" {}

provider "cloudflare" {}

module "mongodb" {
  source         = "./modules/atlas-cluster"
  org_id         = data.mongodbatlas_roles_org_id.org.org_id
  project_name   = var.environment
  clusters       = var.mongodbatlas_clusters
  teams          = local.mongodbatlas_teams_with_ids
  ip_access_list = var.mongodbatlas_ip_access_list
}

module "s3" {
  source       = "./modules/s3"
  bucket_names = local.s3_bucket_names
}

module "hetzner-vps" {
  source          = "./modules/hetzner-vps"
  server_name     = var.hcloud_server_name
  server_image    = var.hcloud_server_image
  server_type     = var.hcloud_server_type
  server_backups  = var.hcloud_server_backups
  server_location = var.hcloud_server_location
  ssh_keys        = var.hcloud_ssh_keys
  firewall_rules  = var.hcloud_firewall_rules
}

module "cloudflare-dns" {
  source  = "./modules/cloudflare-dns"
  name    = var.hcloud_server_name
  type    = "A"
  proxied = true
  content = module.hetzner-vps.server_ip
}
