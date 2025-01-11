resource "aws_vpc_security_group_ingress_rule" "firewall_int" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 100

  tags = {
  Name = "int_firewall"
 }
}