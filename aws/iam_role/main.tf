resource "aws_iam_role" "role" {
  assume_role_policy = file("")
}
