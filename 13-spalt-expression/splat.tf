resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path = "${path.module}/iamuser/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn // the splat expression is [*]
}