
resource "aws_instance" "myEC2" {
  ami = "ami-07dc1ccdcec3b4eab"
  instance_type = "t2.micro"
  
  count = var.instance_count

  tags = {
    Name = "myEC2-count-arg-${count.index}"
  }
}

