provider "aws" {
  region = "eu-west-3"
}
resource "aws_instance" "myec2" {
   ami = "ami-04e5276ebb8451442"
   instance_type = "t2.micro"

   provisioner "local-exec" {
    command = "echo ${self.public_ip} >> server_ip.txt"
  }

}
