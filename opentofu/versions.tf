terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "1.39.0"
    }
    minio = {
      source  = "aminueza/minio"
      version = "3.6.3"
    }
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.52.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.9.0"
    }
    dns = {
      source  = "opentofu/dns"
      version = "3.4.3"
    }
  }
}
