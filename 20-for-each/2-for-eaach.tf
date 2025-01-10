variable "my-map" {
    default = {
        key-marc = "value-marc"
        key1 = "value1"
    }
}

resource "aws_instance" "web" {
  for_each      = var.my-map
  ami           = each.value
  instance_type = "t3.micro"

  tags = {
    Name = each.key
  }
}