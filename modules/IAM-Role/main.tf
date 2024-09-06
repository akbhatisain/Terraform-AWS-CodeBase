resource "aws_iam_role" "this" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy

  tags = var.tags
}

resource "aws_iam_policy_attachment" "this" {
  for_each = toset(var.policy_arns)

  name       = "${var.role_name}-policy-attachment-${each.key}"
  roles      = [aws_iam_role.this.name]
  policy_arn = each.value
}
