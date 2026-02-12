terraform {
  required_providers {
    http = {
      source  = "opentofu/http"
      version = "3.5.0"
    }
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "2.6.0"
    }
    minio = {
      source  = "aminueza/minio"
      version = "3.17.0"
    }
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.60.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.17.0"
    }
    dns = {
      source  = "opentofu/dns"
      version = "3.5.0"
    }
  }
}
