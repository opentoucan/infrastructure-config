terraform {
  required_providers {
    http = {
      source = "opentofu/http"
      version = "3.5.0"
    }
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "2.0.1"
    }
    minio = {
      source  = "aminueza/minio"
      version = "3.6.5"
    }
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.54.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.11.0"
    }
    dns = {
      source  = "opentofu/dns"
      version = "3.4.3"
    }
  }
}
