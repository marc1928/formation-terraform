resource "aws_vpc_security_group_egress_rule" "alows_all_trafic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1" # all protocol

  tags = {
    Name = "Out_firewall"
  }
}