resource "azurerm_public_ip" "public_ip_vm" {
  allocation_method   = "Static"
  location            = var.azure_location
  name                = "public_ip_vm"
  resource_group_name = var.azure_resource_group_name
  tags = merge(
    var.azure_user_tags,
    {
      Name = "public_ip_vm"
    }
  )
}
#