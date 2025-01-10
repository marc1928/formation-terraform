resource "aws_instance" "my_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # Remplacez par une AMI de votre région
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.ec2_sg.name] # Associe le SG à l'instance

  tags = {
    Name = "MyInstance"
  }
}