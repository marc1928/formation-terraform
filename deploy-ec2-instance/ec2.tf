resource "aws_instance" "my_instance" {
  ami           = "ami-049a0782ca02dc58c"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.ec2_sg.name] 

  tags = {
    Name = "MyInstance"
  }
}