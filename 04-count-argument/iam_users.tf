resource "aws_iam_user" "lb" {
  name = var.dev_team[count.index]
  count = length(var.dev_team)  
  }