variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "family" {
  description = "Family of the task definition"
  type        = string
}

variable "container_definitions" {
  description = "Container definitions in JSON format"
  type        = string
}

variable "memory" {
  description = "Memory for the task"
  type        = string
}

variable "cpu" {
  description = "CPU units for the task"
  type        = string
}

variable "service_name" {
  description = "Name of the ECS service"
  type        = string
}

variable "desired_count" {
  description = "Number of tasks"
  type        = number
}

variable "subnet_ids" {
  description = "Subnets for ECS service"
  type        = list(string)
}

variable "security_group_ids" {
  description = "Security groups for ECS service"
  type        = list(string)
}

variable "execution_role_name" {
  description = "Name of the IAM role for ECS task execution"
  type        = string
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {}
}
