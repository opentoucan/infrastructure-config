terraform {
  backend "s3" {
    bucket = "opentoucan-tfstate"
    key    = "environment"
    endpoints = {
      s3 = "https://redacted"
    }
    access_key = "redacted"
    secret_key = "redacted"
    region = "fsn1"
    skip_credentials_validation = true
    skip_requesting_account_id = true
    skip_metadata_api_check = true
    skip_region_validation = true
    use_path_style = true
    skip_s3_checksum = true
  }
}
