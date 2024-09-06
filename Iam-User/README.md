# IAM User Module
This module creates an AWS IAM user with the provided policy ARNs, inline policy, and optional access key.

## Inputs
- `user_name`: The name of the IAM user to create.
- `policy_arns`: A list of policy ARNs to attach to the user.
- `inline_policy`: (Optional) An inline policy in JSON format.
- `create_access_key`: Boolean flag to create an access key for the user.
- `tags`: (Optional) A map of tags to assign to the IAM user.

## Outputs
- `user_name`: The name of the IAM user.
- `user_arn`: The ARN of the IAM user.
- `access_key_id`: (Only if access key is created) The Access Key ID.
- `secret_access_key`: (Only if access key is created) The Secret Access Key.

## File Structure: 

|modules/
│   └── IAM-User/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
|Iam-User/
|  ├── iam-user-main.tf
│  └── README.md

### Key Points
Flexibility: This module allows for customization of almost every aspect of an IAM user Creation.
Scalability: You can easily add multiple service by adjusting the service ARNs.
Reusability: Just like the other module, this Iam-user module can be reused across different projects with minimal changes.

### Prerequisites
1. Basic understanding of AWS IAM user and policy creation.
2. Understanding of terraform.
3. Add the required value to the your iam-user-main.tf. (All fields are required).


### Use Case
Go through the iiam-user-main.tf file in the Iam-User folder out side in root.

1. Clone the repository
2. Change directory to Iam-User ( $ cd Iam-User).
3. Do the changes in iam-user-main.tf (Add all the required details.)
4. $ terraform init
5. $ terraform plan
6. $ terraform apply
7. keep the resource id's safe for further use case.


### Kinldy note down the resource Id for your future reffrence.

## Humble Request :- 
Feel free to modify the code and let me know about any new changes or your suggestions.
Together we will improve the AWS terraform Codebase in such way so that if everyone wants to learn they can use it.