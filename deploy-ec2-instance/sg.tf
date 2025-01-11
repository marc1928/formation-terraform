resource "aws_security_group" "ec2_sg" {
  name        = "EC2SecurityGroup"
  description = "Allow SSH and HTTP access"
  vpc_id      = aws_vpc.my_vpc.id
  }