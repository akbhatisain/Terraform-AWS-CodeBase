provider "aws" {
  region = "us-west-1"  # Replace with your desired region
}
module "iam_role" {
  source = "../modules/IAM-Role"

  role_name           = "Test-role" #Change here
  assume_role_policy  = <<EOF
{                                       
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ]
}
EOF
  policy_arns = [
    "arn:aws:iam::aws:policy/AmazonS3FullAccess",   # Add Service ARN
    "arn:aws:iam::aws:policy/AmazonEC2FullAccess"   # Add Service ARN
  ]
  tags = {
    Environment = "dev"
  }
}
