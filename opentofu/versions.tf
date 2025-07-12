terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "1.38.0"
    }
    minio = {
      source  = "aminueza/minio"
      version = "3.6.0"
    }
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.51.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.6.0"
    }
    dns = {
      source  = "opentofu/dns"
      version = "3.4.3"
    }
  }
}
