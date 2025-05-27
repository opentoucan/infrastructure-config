resource "minio_s3_bucket" "bucket" {
  bucket         = var.name
  acl            = "private"
  object_locking = false
}
