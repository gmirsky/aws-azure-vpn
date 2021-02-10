resource "aws_route" "subnet_1_exit_route" {
  route_table_id         = aws_route_table.route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.internet_gateway.id
}

resource "aws_route" "route_to_azure" {
  route_table_id = aws_route_table.route_table.id
  destination_cidr_block = azurerm_virtual_network.vnet.address_space[0]
  gateway_id             = aws_vpn_gateway.vpn_gateway.id
}
