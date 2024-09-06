resource "aws_iam_user" "this" {
  name = var.user_name

  tags = var.tags
}

resource "aws_iam_policy_attachment" "this" {
  for_each = toset(var.policy_arns)

  name       = "${var.user_name}-policy-attachment-${each.key}"
  users      = [aws_iam_user.this.name]
  policy_arn = each.value
}

# Optionally create access keys for the user if requested
resource "aws_iam_access_key" "this" {
  count   = var.create_access_key ? 1 : 0
  user    = aws_iam_user.this.name
}

# Optionally attach an inline policy if provided
resource "aws_iam_user_policy" "inline_policy" {
  count  = var.inline_policy != "" ? 1 : 0
  name   = "${var.user_name}-inline-policy"
  user   = aws_iam_user.this.name
  policy = var.inline_policy
}