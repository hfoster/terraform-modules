resource "aws_iam_role" "role" {
  name               = var.name
  path               = var.path
  assume_role_policy = var.policy_json
}
