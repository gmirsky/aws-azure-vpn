resource "azurerm_virtual_network" "vnet" {
  address_space       = [var.azure_cidr_block]
  location            = azurerm_resource_group.resource_group.location
  name                = "vnet"
  resource_group_name = azurerm_resource_group.resource_group.name
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "vnet"
    }
  )
}
#