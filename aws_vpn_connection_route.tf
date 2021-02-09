resource "aws_vpn_connection_route" "vpn_connection_route_1" {
  # Azure's vnet CIDR
  destination_cidr_block = azurerm_virtual_network.vnet.address_space[0]
  vpn_connection_id      = aws_vpn_connection.vpn_connection_1.id
}

resource "aws_vpn_connection_route" "vpn_connection_route_2" {
  # Azure's vnet CIDR
  destination_cidr_block = azurerm_virtual_network.vnet.address_space[0]
  vpn_connection_id      = aws_vpn_connection.vpn_connection_2.id
}
