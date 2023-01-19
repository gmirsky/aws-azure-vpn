resource "aws_vpn_connection" "vpn_connection_1" {
  customer_gateway_id = aws_customer_gateway.customer_gateway_1.id
  static_routes_only  = true
  type                = "ipsec.1"
  vpn_gateway_id      = aws_vpn_gateway.vpn_gateway.id
  tags = merge(
    module.aws_user_tags.tags,
    {
      Name = "vpn_connection_1"
    }
  )
}
#
resource "aws_vpn_connection" "vpn_connection_2" {
  customer_gateway_id = aws_customer_gateway.customer_gateway_2.id
  static_routes_only  = true
  type                = "ipsec.1"
  vpn_gateway_id      = aws_vpn_gateway.vpn_gateway.id
  tags = merge(
    module.aws_user_tags.tags,
    {
      Name = "vpn_connection_2"
    }
  )
}
#