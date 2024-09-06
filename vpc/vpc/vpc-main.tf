module "vpc" {
  source = "./modules/VPC"

  vpc_name                = "my-vpc"
  vpc_cidr                = "10.0.0.0/16"
  public_subnet_cidrs    = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs   = ["10.0.3.0/24", "10.0.4.0/24"]
  public_subnet_count     = 2
  private_subnet_count    = 2
  availability_zones      = data.aws_availability_zones.available.names
}
