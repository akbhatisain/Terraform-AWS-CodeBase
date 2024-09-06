variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "The ACL applied to the S3 bucket"
  type        = string
  default     = "public"
}

variable "sse_algorithm" {
  description = "The server-side encryption algorithm"
  type        = string
  default     = "AES256"
}

variable "kms_master_key_id" {
  description = "The AWS KMS master key ID used for encryption"
  type        = string
  default     = null
}

variable "versioning_enabled" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = false
}

variable "logging_target_bucket" {
  description = "The S3 bucket to store access logs"
  type        = string
  default     = null
}

variable "logging_target_prefix" {
  description = "The prefix to use for the logs"
  type        = string
  default     = null
}

variable "block_public_acls" {
  description = "Block public ACLs"
  type        = bool
  default     = false
}

variable "block_public_policy" {
  description = "Block public bucket policies"
  type        = bool
  default     = false
}

variable "ignore_public_acls" {
  description = "Ignore public ACLs"
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Restrict public bucket policies"
  type        = bool
  default     = true
}

variable "policy_json" {
  description = "The JSON document that defines the bucket policy"
  type        = string
  default     = ""
}

variable "enable_website" {
  description = "Enable website hosting for the S3 bucket"
  type        = bool
  default     = false
}

variable "website_index_document" {
  description = "The name of the index document for the website"
  type        = string
  default     = "index.html"
}

variable "website_error_document" {
  description = "The name of the error document for the website"
  type        = string
  default     = "error.html"
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
