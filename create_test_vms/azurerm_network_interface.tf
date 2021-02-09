resource "azurerm_network_interface" "network_interface_vm" {
  name                = "network_interface_aws_azure_vpn_test_server"
  location            = var.azure_location
  resource_group_name = var.azure_resource_group_name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.azure_subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip_vm.id
  }
  tags = merge(
    var.azure_user_tags,
    {
      Name = "network_interface_aws_azure_vpn_test_server"
    }
  )
}
