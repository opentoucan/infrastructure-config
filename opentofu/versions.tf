terraform {
  required_providers {
    http = {
      source  = "opentofu/http"
      version = "3.5.0"
    }
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "2.2.0"
    }
    minio = {
      source  = "aminueza/minio"
      version = "3.11.4"
    }
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.57.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.12.0"
    }
    dns = {
      source  = "opentofu/dns"
      version = "3.4.3"
    }
  }
}
