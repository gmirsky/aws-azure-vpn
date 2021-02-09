resource "aws_security_group" "icmp" {
  vpc_id      = var.aws_vpc_id
  description = "ICMP security group"
  ingress = [
    {
      description      = "ICMP"
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks = [
        "0.0.0.0/0"
      ]
    }
  ]
  egress = [
    {
      description      = "ICMP"
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks = [
        "0.0.0.0/0"
      ]
    }
  ]
  tags = merge(
    var.aws_user_tags,
    {
      Name = "security_group_icmp"
    }
  )
}
