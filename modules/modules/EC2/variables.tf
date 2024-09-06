variable "security_group_name" {
  description = "The name of the security group."
  type        = string
}

variable "security_group_description" {
  description = "The description of the security group."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created."
  type        = string
}

variable "ingress_rules" {
  description = "List of ingress rules for the security group."
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress_rules" {
  description = "List of egress rules for the security group."
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "instance_name_prefix" {
  description = "Prefix for the instance name tag."
  type        = string
}

variable "additional_tags" {
  description = "Additional tags to apply to the instance."
  type        = map(string)
  default     = {}
}

variable "instance_count" {
  description = "Number of instances to create."
  type        = number
  default     = 1
}

variable "ami_id" {
  description = "The AMI ID to use for the instance."
  type        = string
}

variable "instance_type" {
  description = "The instance type to use."
  type        = string
}

variable "key_name" {
  description = "The key pair name to use for SSH access."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the instance will be launched."
  type        = string
}

variable "associate_public_ip" {
  description = "Whether to associate a public IP address with the instance."
  type        = bool
  default     = true
}

variable "user_data" {
  description = "User data script to be executed on instance launch."
  type        = string
  default     = ""
}
