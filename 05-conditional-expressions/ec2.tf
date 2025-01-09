
resource "aws_instance" "myEC2" {
  ami = "ami-07dc1ccdcec3b4eab"
  instance_type = var.environment == "development" && var.region == "eu-west-3" ? "t2.micro" : "t3.micro"  
  count = var.environment == "development" ? 3 : 5

  tags = {
    Name = var.instance_name[count.index]
  }
}

