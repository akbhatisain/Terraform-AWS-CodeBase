variable "user_name" {
  description = "The name of the IAM user to create."
  type        = string
}

variable "policy_arns" {
  description = "List of policy ARNs to attach to the user."
  type        = list(string)
  default     = []
}

variable "inline_policy" {
  description = "Optional inline policy in JSON format to attach directly to the user."
  type        = string
  default     = ""
}

variable "create_access_key" {
  description = "Boolean value to determine if an access key should be created for the user."
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to the IAM user."
  type        = map(string)
  default     = {}
}