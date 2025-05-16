resource "minio_s3_bucket" "bucket" {
  for_each       = toset(var.bucket_names)
  bucket         = each.value
  acl            = "private"
  object_locking = false
}
