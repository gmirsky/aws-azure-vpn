resource "azurerm_public_ip" "public_ip_1" {
  name                = "virtual_network_gateway_public_ip_1"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  allocation_method   = "Dynamic"
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "virtual_network_gateway_public_ip_1"
    }
  )
}

resource "azurerm_public_ip" "public_ip_2" {
  name                = "virtual_network_gateway_public_ip_2"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  allocation_method   = "Dynamic"
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "virtual_network_gateway_public_ip_2"
    }
  )
}
