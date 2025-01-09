resource "aws_security_group" "allow_tls" {
  name        = "attribudte-firewall"
  description = "Manage by terraform"

  tags = {
    Name = "allow_tls"
  }
}
