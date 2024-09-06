module "iam_user" {
  source = "../modules/IAM-User"

  user_name        = "new-test-user"
  policy_arns      = [
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
    "arn:aws:iam::aws:policy/AdministratorAccess"
  ]
  inline_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "s3:*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
  create_access_key = true
  tags = {
    Department = "Devops"
  }
}
