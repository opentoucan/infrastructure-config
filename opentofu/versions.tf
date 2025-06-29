terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "1.36.0"
    }
    minio = {
      source  = "aminueza/minio"
      version = "3.5.3"
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
