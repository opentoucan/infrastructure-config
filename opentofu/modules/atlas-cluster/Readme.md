# Module for provisioning a Mongo Atlas project and N number of clusters

## Usage
```hcl
module "mongodb" {
  source         = "./modules/atlas-cluster"
  org_id         = data.mongodbatlas_roles_org_id.org.org_id
  project_name   = var.environment
  clusters       = var.mongo_atlas_clusters
  teams          = local.mongodbatlas_teams_with_ids
  ip_access_list = var.mongodbatlas_ip_access_list
}
```
