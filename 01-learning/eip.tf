resource "aws_eip" "lb" {
  domain   = "vpc"

  tags = {
    Name = "eip_learn"
  }
}