resource "azurerm_public_ip" "public_ip_1" {
  name                = "virtual_network_gateway_public_ip_1"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  # Public IP needs to be dynamic for the Virtual Network Gateway
  # The IP address will be "dynamically generated" after
  # being attached to the Virtual Network Gateway below
  allocation_method = "Dynamic"
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
  # Public IP needs to be dynamic for the Virtual Network Gateway
  allocation_method = "Dynamic"
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "virtual_network_gateway_public_ip_2"
    }
  )
}
