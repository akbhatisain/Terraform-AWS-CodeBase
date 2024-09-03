# EC2 Module Structure
Here's an outline for the EC2 module:

Inputs: Parameters for AMI, instance type, key pair, security groups, tags, user data, etc.
Resources: Terraform resources to create EC2 instances.
Outputs: Key values like instance IDs, public IPs, etc.
Example Code Structure

# File Structure: 

|modules/
│   └── EC2/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
|ec2-machine/
|  ├── ec2-main.tf
│  └── README.md

# Key Points
Flexibility: This module allows for customization of almost every aspect of an EC2 instance.
Scalability: You can easily create multiple instances by adjusting the instance_count variable.
Reusability: Just like the VPC module, this EC2 module can be reused across different projects with minimal changes.

# Prerequisites
1. Basic understanding of AWS ec2 machine creation.
2. Understanding of terraform.
3. Add the required value to the your ec2-main.tf. (All fields are required).
4. Make sure you have created one Key file for ec2 connectivity.(Keep that name handy)
 aws ec2 create-key-pair --key-name my-key --region us-west-1 --query 'KeyMaterial' --output text > my-key.pem

# Use Case
Go through the ec2-main.tf file in the vpc folder out side in root.

1. Clone the repository
2. change directory to ec2-machine ( $ cd ec2-machine).
3. Do the changes in ec2-main.tf (Add all the required details.)
4. $ terraform init
5. $ terraform plan
6. $ terraform apply
7. keep the resource id's safe for further use case.

# Kinldy note down the resource Id for your future reffrence.

# Request :- 
Feel free to modify the code and let me know about any new changes or your suggestions.
Together we will improve the AWS terraform Codebase in such way so that if everyone wants to learn they can use it.



Go through the ec2-main.tf outside of modules folder.

# Kinldy note down the resource Id for your future reffrence.