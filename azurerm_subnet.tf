resource "azurerm_subnet" "subnet_1" {
  address_prefixes     = [var.azure_subnet_cidr_block_1]
  name                 = "subnet_1"
  resource_group_name  = azurerm_resource_group.resource_group.name
  virtual_network_name = azurerm_virtual_network.vnet.name
}

resource "azurerm_subnet" "subnet_gateway" {
  address_prefixes     = [var.azure_subnet_cidr_block_2]
  name                 = "GatewaySubnet"
  resource_group_name  = azurerm_resource_group.resource_group.name
  virtual_network_name = azurerm_virtual_network.vnet.name
}
