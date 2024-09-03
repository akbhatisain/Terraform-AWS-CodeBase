# VPC Module Structure
Here’s a basic outline of what the VPC module might include:

Inputs: Parameters to customize the VPC, such as CIDR block, subnets, availability zones, etc.
Resources: Terraform resources to create the VPC, subnets, route tables, Internet Gateway, etc.
Outputs: Key values to expose, such as the VPC ID, subnet IDs, route table IDs, etc.

# Code Structure
|modules/
|   └──VPC/
│       ├──── main.tf
│       ├──── variables.tf
│       ├──── outputs.tf
│       └──── README.md
|vpc/
|  ├──── vpc-main.tf
│  ├──── README.md



# Key Points
Reusability: This module can be reused with different configurations by simply changing the input variables.
Simplicity: The module abstracts the complexity of creating a VPC with subnets, making it easy to manage and deploy.

# Prerequisites
1. Basic understanding of AWS VPC creation.
2. Understanding of terraform.
3. Add the required value to the your vpc-main.tf (All fields are required).

# Use Case
Go through the vpc-main.tf file in the vpc folder out side in root.

1. Clone the repository
2. change directory to vpc ( $ cd vpc).
3. Do the changes in vpc-main.tf (Add all the required details.)
4. $ terraform init
5. $ terraform plan
6. $ terraform apply
7. keep the resource id's safe for further use case.

# Kinldy note down the resource Id for your future reffrence.

# Request :- 
Feel free to modify the code and let me know about any new changes or your suggestions.
Together we will improve the AWS terraform Codebase in such way so that if everyone wants to learn they can use it.

