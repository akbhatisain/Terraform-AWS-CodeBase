variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
}

variable "desired_count" {
  description = "The desired number of tasks"
  type        = number
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "The name of the key pair to use for EC2 instances"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the ECS service is running"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets for the ECS service"
  type        = list(string)
}

variable "security_group_ids" {
  description = "Security groups for the ECS service"
  type        = list(string)
}

variable "image" {
  description = "Docker image to use for the ECS task"
  type        = string
}
