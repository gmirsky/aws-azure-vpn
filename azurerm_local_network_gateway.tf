# Tunnel from Azure to AWS vpn_connection_1 (tunnel 1)
resource "azurerm_local_network_gateway" "local_network_gateway_1_tunnel1" {
  name                = "local_network_gateway_1_tunnel1"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  # AWS VPN Connection public IP address
  gateway_address = aws_vpn_connection.vpn_connection_1.tunnel1_address
  address_space = [
    aws_vpc.vpc.cidr_block
  ]
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "local_network_gateway_1_tunnel1"
    }
  )
}

# Tunnel from Azure to AWS vpn_connection_1 (tunnel 2)
resource "azurerm_local_network_gateway" "local_network_gateway_1_tunnel2" {
  name                = "local_network_gateway_1_tunnel2"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  gateway_address     = aws_vpn_connection.vpn_connection_1.tunnel2_address
  address_space = [
    aws_vpc.vpc.cidr_block
  ]
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "local_network_gateway_1_tunnel2"
    }
  )
}

# Tunnel from Azure to AWS vpn_connection_2 (tunnel 1)
resource "azurerm_local_network_gateway" "local_network_gateway_2_tunnel1" {
  name                = "local_network_gateway_2_tunnel1"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  gateway_address     = aws_vpn_connection.vpn_connection_2.tunnel1_address
  address_space = [
    aws_vpc.vpc.cidr_block
  ]
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "local_network_gateway_2_tunnel1"
    }
  )
}
# Tunnel from Azure to AWS vpn_connection_2 (tunnel 2)
resource "azurerm_local_network_gateway" "local_network_gateway_2_tunnel2" {
  name                = "local_network_gateway_2_tunnel2"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  gateway_address     = aws_vpn_connection.vpn_connection_2.tunnel2_address
  address_space = [
    aws_vpc.vpc.cidr_block
  ]
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "local_network_gateway_2_tunnel2"
    }
  )
}
