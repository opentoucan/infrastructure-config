## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 5.5.0 |
| <a name="requirement_dns"></a> [dns](#requirement\_dns) | 3.4.3 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | 1.51.0 |
| <a name="requirement_minio"></a> [minio](#requirement\_minio) | 3.5.2 |
| <a name="requirement_mongodbatlas"></a> [mongodbatlas](#requirement\_mongodbatlas) | 1.34.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_dns"></a> [dns](#provider\_dns) | 3.4.3 |
| <a name="provider_mongodbatlas"></a> [mongodbatlas](#provider\_mongodbatlas) | 1.34.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudflare-dns"></a> [cloudflare-dns](#module\_cloudflare-dns) | ./modules/cloudflare-dns | n/a |
| <a name="module_hetzner-vps"></a> [hetzner-vps](#module\_hetzner-vps) | ./modules/hetzner-vps | n/a |
| <a name="module_mongodb"></a> [mongodb](#module\_mongodb) | ./modules/atlas-cluster | n/a |
| <a name="module_s3"></a> [s3](#module\_s3) | ./modules/s3 | n/a |

## Resources

| Name | Type |
|------|------|
| [dns_a_record_set.access_ips](https://registry.terraform.io/providers/opentofu/dns/3.4.3/docs/data-sources/a_record_set) | data source |
| [mongodbatlas_roles_org_id.org](https://registry.terraform.io/providers/mongodb/mongodbatlas/1.34.0/docs/data-sources/roles_org_id) | data source |
| [mongodbatlas_team.teams](https://registry.terraform.io/providers/mongodb/mongodbatlas/1.34.0/docs/data-sources/team) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_access_list"></a> [dns\_access\_list](#input\_dns\_access\_list) | DNS record list for whitelisting access to restricted resources such as the Postgres database | `list(string)` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name | `string` | n/a | yes |
| <a name="input_hcloud_firewall_rules"></a> [hcloud\_firewall\_rules](#input\_hcloud\_firewall\_rules) | n/a | <pre>list(object({<br/>    direction  = string<br/>    protocol   = string<br/>    port       = optional(string)<br/>    source_ips = list(string)<br/>  }))</pre> | n/a | yes |
| <a name="input_hcloud_server_backups"></a> [hcloud\_server\_backups](#input\_hcloud\_server\_backups) | Enable Hetzner server backups | `bool` | `false` | no |
| <a name="input_hcloud_server_image"></a> [hcloud\_server\_image](#input\_hcloud\_server\_image) | OS Base image type | `string` | n/a | yes |
| <a name="input_hcloud_server_location"></a> [hcloud\_server\_location](#input\_hcloud\_server\_location) | Server location name such as nbg1, fsn1, hel1 | `string` | n/a | yes |
| <a name="input_hcloud_server_name"></a> [hcloud\_server\_name](#input\_hcloud\_server\_name) | VPS server name | `string` | n/a | yes |
| <a name="input_hcloud_server_type"></a> [hcloud\_server\_type](#input\_hcloud\_server\_type) | Hetzner VPS server hardware tier | `string` | n/a | yes |
| <a name="input_hcloud_ssh_keys"></a> [hcloud\_ssh\_keys](#input\_hcloud\_ssh\_keys) | Public SSH Keys | <pre>list(object({<br/>    name = string<br/>    key  = string<br/>  }))</pre> | n/a | yes |
| <a name="input_mongodbatlas_clusters"></a> [mongodbatlas\_clusters](#input\_mongodbatlas\_clusters) | List of clusters to create within the project | <pre>list(object({<br/>    name                  = string<br/>    region_name           = string<br/>    provider_name         = string<br/>    provider_instance     = string<br/>    cluster_type          = string<br/>    backing_provider_name = string<br/>    cloud_backup          = bool<br/>  }))</pre> | n/a | yes |
| <a name="input_mongodbatlas_ip_access_list"></a> [mongodbatlas\_ip\_access\_list](#input\_mongodbatlas\_ip\_access\_list) | IP Address list for accessing project | `list(string)` | n/a | yes |
| <a name="input_mongodbatlas_team_roles"></a> [mongodbatlas\_team\_roles](#input\_mongodbatlas\_team\_roles) | List of objects containing a team name and a list of roles to assign for a project | <pre>list(object({<br/>    name  = string<br/>    roles = list(string)<br/>  }))</pre> | n/a | yes |
| <a name="input_s3_bucket_domain"></a> [s3\_bucket\_domain](#input\_s3\_bucket\_domain) | S3 domain for creating buckets | `string` | n/a | yes |
| <a name="input_s3_bucket_names"></a> [s3\_bucket\_names](#input\_s3\_bucket\_names) | S3 bucket names | `list(string)` | n/a | yes |
| <a name="input_s3_bucket_region"></a> [s3\_bucket\_region](#input\_s3\_bucket\_region) | Region for the S3 bucket | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hetzner_server_ip"></a> [hetzner\_server\_ip](#output\_hetzner\_server\_ip) | IP address of the Hetzner server |
