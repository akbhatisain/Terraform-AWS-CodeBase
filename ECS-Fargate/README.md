# ECS Fargate using Terraform
 Fargate is a serverless compute engine for containers, which allows you to run containers without needing to manage the underlying EC2 instances. We'll break this process into the following steps:

## 1. Prerequisites
Before setting up ECS Fargate, you'll need:
A VPC with subnets and security groups
IAM roles and policies for ECS tasks.
An S3 bucket for logging (optional).

## 2. High-Level Steps for ECS Fargate Setup
Create an ECS Cluster: This is the environment where your services and tasks will run.
Define Task Definitions: These are the blueprints for your containers (including CPU, memory, and networking).
Create ECS Service: This launches your tasks and ensures they keep running.
Configure Load Balancing (optional): You can expose your services to the internet using an Application Load Balancer.

## 3. Additional Configurations for ECS Fargate
Load Balancer (Optional): If you want to expose your service externally, you can add an Application Load Balancer (ALB) to your ECS service.
Auto-Scaling (Optional): You can set up auto-scaling policies to dynamically scale your ECS tasks based on traffic.

## 4. After Running the Terraform Code
Once the code is executed:
ECS Cluster: You’ll have an ECS Fargate cluster up and running.
ECS Task Definition: Your containers will be defined and ready for deployment.
ECS Service: A service will be created that runs and manages the tasks.
After the cluster is up, you can register additional task definitions by modifying the task definition and service settings.
Use the cluster ARN for deploying more services within the same cluster.
Further applications can be added by defining more task definitions (e.g., for your microservices).

## Key Details for Application Deployment:
Cluster Name: my-ecs-fargate-cluster
Task Definition: my-ecs-task
Service Name: my-ecs-fargate-service
Subnets: Ensure you have public/private subnets for networking.
Security Groups: Allow traffic on the required ports (like HTTP/HTTPS).
IAM Roles: These ensure ECS tasks can pull images and communicate with AWS services.

## Notable things:
We are using the vpc module here to create a vpc with public and private subnets.
So we are giving all the varibale values in ecs-main.tf.
You can create vpc seperatly and then use it here while creating ECS.

## File Structure: 

|modules/
│   └── /ECS-Fargate
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│   └── /VPC
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
|ECS-Fargate/
|  ├── ecs-main.tf
│  └── README.md

### Use Case
Go through the ecs-main.tf file in the ECS-Fargate folder out side in root.

1. Clone the repository
2. change directory to ECS-Fargate ( $ cd ECS-Fargate).
3. Do the changes in ecs-main.tf (Add all the required details.)
4. $ terraform init
5. $ terraform plan
6. $ terraform apply
7. keep the resource id's safe for further use case.

### Kinldy note down the resource Id for your future reffrence.

### Request :- 
Feel free to modify the code and let me know about any new changes or your suggestions.
Together we will improve the AWS terraform Codebase in such way so that if everyone wants to learn they can use it.