provider "aws" {
  region = "eu-west-3"
}

resource "aws_iam_user" "lb" {
  name = "demo-user.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn
}

output "users_name" {
  value = aws_iam_user.lb[*].name
}

output "zipmap" {
  value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}