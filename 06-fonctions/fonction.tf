resource "aws_iam_user" "this" {
  name = "demo-iam-user"
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "test-policy"
  user = aws_iam_user.this.name

  policy = file("./O6-functions/aim-user-policy.json")
}