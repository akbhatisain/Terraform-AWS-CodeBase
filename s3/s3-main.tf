module "s3" {
  source = "../modules/S3"

  bucket_name = "terraform-s3-bucket212121212"
  acl         = "private"

  # Server-Side Encryption
  sse_algorithm     = "AES256"
  kms_master_key_id = null

  # Versioning
  versioning_enabled = true

  # Logging
  logging_target_bucket = null
  logging_target_prefix = null

  # Public Access Block
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  # Website Configuration (optional)
  enable_website          = false
  website_index_document  = "index.html"
  website_error_document  = "error.html"

  # Tags
  tags = {
    Environment = "dev"
    Team        = "development"
  }
}
