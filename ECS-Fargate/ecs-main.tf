provider "aws" {
  region = "us-west-1"  # Specify the AWS region
}

# Call VPC module to create a VPC with both public and private subnets
module "vpc" {
  source          = "../modules/VPC"
  vpc_cidr        = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  azs             = ["us-west-1c", "us-west-1b"] # Use available availability zones
}

# ECS Fargate cluster and service
module "ecs_fargate" {
  source               = "../modules/ECS-Fargate"
  # Explicitly enforce dependency
  depends_on = [module.vpc]
  cluster_name         = "my-fargate-cluster"
  family               = "my-task-family"
  container_definitions = jsonencode([{
    name  = "my-container"
    image = "nginx"
    essential = true
    portMappings = [{
      containerPort = 80
      hostPort      = 80
    }]
  }])
  memory               = "512"  # Task memory in MiB
  cpu                  = "256"  # Task CPU units
  service_name         = "my-fargate-service"
  desired_count        = 1
  subnet_ids           = module.vpc.public_subnet_ids  # Use public subnets for Fargate
  security_group_ids   = [aws_security_group.ecs_sg.id]  # Security group ID

  execution_role_name  = "ecsTaskExecutionRole"

  tags = {
    Name = "ECS-Fargate-Service"
  }
}

# Security Group for ECS Fargate tasks
resource "aws_security_group" "ecs_sg" {
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ECS-Fargate-SG"
  }
}
