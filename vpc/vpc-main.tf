provider "aws" {
  region = "us-west-1"                                  # Change this to your preferred AWS region
}

module "vpc" {
  source             = "../modules/VPC"
  cidr_block         = "10.0.0.0/16"                    # Choose your Network range.
  vpc_name           = "my-vpc"                         # Change it accordingly.
  availability_zones = ["us-west-1a", "us-west-1b"]     # You can go with one availability zone. 
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]  # You can go with one subnet if you are using single availability zone.
}
