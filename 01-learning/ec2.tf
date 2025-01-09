
resource "aws_instance" "myEC2" {
  ami = "ami-07dc1ccdcec3b4eab"
  instance_type = "t2.micro"
  
  tags = {
    Name = "myEC2"
  }
}

