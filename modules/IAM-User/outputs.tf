output "user_name" {
  description = "The name of the IAM user."
  value       = aws_iam_user.this.name
}

output "user_arn" {
  description = "The ARN of the IAM user."
  value       = aws_iam_user.this.arn
}

# This will return the access key ID and secret access key only if create_access_key is set to true. Otherwise, it will return null.

output "access_key_id" {
  description = "Access Key ID (only if access key is created)."
  value       = var.create_access_key ? aws_iam_access_key.this[0].id : null
}

output "secret_access_key" {
  description = "Secret Access Key (only if access key is created)."
  value       = var.create_access_key ? aws_iam_access_key.this[0].secret : null
}

