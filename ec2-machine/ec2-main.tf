provider "aws" {
  region = "us-west-1"  # Replace with your desired region
}
module "ec2" {
  source = "../modules/ec2"

  ami_id                = "ami-0d53d72369335a9d6"
  instance_type         = "t3.micro"
  key_name              = "my-key"
  vpc_id                = "vpc-0edae8e7265b7a5c6"
  subnet_id             = "subnet-0d0923544906806a0"
  associate_public_ip   = true
  instance_name_prefix  = "dev-intance"
  instance_count        = 2
  additional_tags       = {
    Environment = "dev"
  }

  security_group_name        = "dev-security-group"
  security_group_description = "Security group for my EC2 instances"


  ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
