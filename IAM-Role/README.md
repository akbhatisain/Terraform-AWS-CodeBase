# IAM Role Module

This module creates an AWS IAM role with the provided assume role policy and attaches the specified policies to the role.

## File Structure: 

|modules/
│   └── IAM-Role/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
|IAM-Role/
|  ├── iam-role-main.tf
│  └── README.md

### Key Points
Flexibility: This module allows for customization of almost every aspect of an IAM role Creation.
Scalability: You can easily add multiple service by adjusting the service ARNs.
Reusability: Just like the other module, this Iam-role module can be reused across different projects with minimal changes.

### Prerequisites
1. Basic understanding of AWS IAM role and policy creation.
2. Understanding of terraform.
3. Add the required value to the your iam-role-main.tf. (All fields are required).


### Use Case
Go through the iam-role-main.tf file in the IAM-Role folder out side in root.

1. Clone the repository
2. Change directory to IAM-Role ( $ cd IAM-Role).
3. Do the changes in iam-role-main.tf (Add all the required details.)
4. $ terraform init
5. $ terraform plan
6. $ terraform apply
7. keep the resource id's safe for further use case.

### Inputs

- `role_name`: The name of the IAM role.
- `assume_role_policy`: The assume role policy in JSON format.
- `policy_arns`: List of policy ARNs to attach to the role.
- `tags`: Optional tags to apply to the IAM role.

### Outputs

- `role_name`: The name of the created IAM role.
- `role_arn`: The ARN of the created IAM role.

### Kinldy note down the resource Id for your future reffrence.

## Humble Request :- 
Feel free to modify the code and let me know about any new changes or your suggestions.
Together we will improve the AWS terraform Codebase in such way so that if everyone wants to learn they can use it.