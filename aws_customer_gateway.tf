resource "aws_customer_gateway" "customer_gateway_1" {
  bgp_asn    = 65000
  ip_address = data.azurerm_public_ip.azure_public_ip_1.ip_address
  type       = "ipsec.1"
  tags = merge(
    module.aws_user_tags.tags,
    {
      Name = "customer_gateway_1"
    }
  )
}
#
resource "aws_customer_gateway" "customer_gateway_2" {
  bgp_asn    = 65000
  ip_address = data.azurerm_public_ip.azure_public_ip_2.ip_address
  type       = "ipsec.1"
  tags = merge(
    module.aws_user_tags.tags,
    {
      Name = "customer_gateway_2"
    }
  )
}
#