resource "aws_instance" "web" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
}