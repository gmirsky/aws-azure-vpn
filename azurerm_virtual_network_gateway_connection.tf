resource "azurerm_virtual_network_gateway_connection" "virtual_network_gateway_connection_1_tunnel1" {
  local_network_gateway_id   = azurerm_local_network_gateway.local_network_gateway_1_tunnel1.id
  location                   = azurerm_resource_group.resource_group.location
  name                       = "virtual_network_gateway_connection_1_tunnel1"
  resource_group_name        = azurerm_resource_group.resource_group.name
  shared_key                 = aws_vpn_connection.vpn_connection_1.tunnel1_preshared_key # AWS VPN Connection secret shared key
  type                       = "IPsec"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.virtual_network_gateway.id
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "virtual_network_gateway_connection_1_tunnel1"
    }
  )
}

resource "azurerm_virtual_network_gateway_connection" "virtual_network_gateway_connection_1_tunnel2" {
  local_network_gateway_id   = azurerm_local_network_gateway.local_network_gateway_1_tunnel2.id
  location                   = azurerm_resource_group.resource_group.location
  name                       = "virtual_network_gateway_connection_1_tunnel2"
  resource_group_name        = azurerm_resource_group.resource_group.name
  shared_key                 = aws_vpn_connection.vpn_connection_1.tunnel2_preshared_key
  type                       = "IPsec"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.virtual_network_gateway.id
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "virtual_network_gateway_connection_1_tunnel2"
    }
  )
}

resource "azurerm_virtual_network_gateway_connection" "virtual_network_gateway_connection_2_tunnel1" {
  local_network_gateway_id   = azurerm_local_network_gateway.local_network_gateway_2_tunnel1.id
  location                   = azurerm_resource_group.resource_group.location
  name                       = "virtual_network_gateway_connection_2_tunnel1"
  resource_group_name        = azurerm_resource_group.resource_group.name
  shared_key                 = aws_vpn_connection.vpn_connection_2.tunnel1_preshared_key
  type                       = "IPsec"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.virtual_network_gateway.id
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "virtual_network_gateway_connection_2_tunnel1"
    }
  )
}

resource "azurerm_virtual_network_gateway_connection" "virtual_network_gateway_connection_2_tunnel2" {
  local_network_gateway_id   = azurerm_local_network_gateway.local_network_gateway_2_tunnel2.id
  location                   = azurerm_resource_group.resource_group.location
  name                       = "virtual_network_gateway_connection_2_tunnel2"
  resource_group_name        = azurerm_resource_group.resource_group.name
  shared_key                 = aws_vpn_connection.vpn_connection_2.tunnel2_preshared_key
  type                       = "IPsec"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.virtual_network_gateway.id
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "virtual_network_gateway_connection_2_tunnel2"
    }
  )
}
