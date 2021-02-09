resource "azurerm_virtual_network_gateway" "virtual_network_gateway" {
  active_active       = true # Configuration for high availability
  location            = azurerm_resource_group.resource_group.location
  name                = "virtual_network_gateway"
  resource_group_name = azurerm_resource_group.resource_group.name
  sku                 = var.azure_virtual_network_gateway_sku
  type                = "Vpn"
  vpn_type            = "RouteBased"
  ip_configuration {
    name                          = azurerm_public_ip.public_ip_1.name
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip_1.id
    subnet_id                     = azurerm_subnet.subnet_gateway.id
  }
  ip_configuration {
    name                          = azurerm_public_ip.public_ip_2.name
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip_2.id
    subnet_id                     = azurerm_subnet.subnet_gateway.id
  }
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "virtual_network_gateway"
    }
  )
}
