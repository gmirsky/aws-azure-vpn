resource "aws_vpn_gateway" "vpn_gateway" {
  vpc_id = aws_vpc.vpc.id
  tags = merge(
    module.aws_user_tags.tags,
    {
      Name = "vpn_gateway"
    }
  )
}