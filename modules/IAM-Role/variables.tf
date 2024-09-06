variable "role_name" {
  description = "The name of the IAM role to create."
  type        = string
}

variable "assume_role_policy" {
  description = "The assume role policy for the role."
  type        = string
}

variable "policy_arns" {
  description = "List of policy ARNs to attach to the role."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags to apply to the IAM role."
  type        = map(string)
  default     = {}
}
