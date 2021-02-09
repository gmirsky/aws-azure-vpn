data "azurerm_public_ip" "azure_public_ip_1" {
  # That neat name interpolation
  # The end result is _exactly_ the name of Azure's public IP
  name                = "${azurerm_virtual_network_gateway.virtual_network_gateway.name}_public_ip_1"
  resource_group_name = azurerm_resource_group.resource_group.name
}

data "azurerm_public_ip" "azure_public_ip_2" {
  name                = "${azurerm_virtual_network_gateway.virtual_network_gateway.name}_public_ip_2"
  resource_group_name = azurerm_resource_group.resource_group.name
}
