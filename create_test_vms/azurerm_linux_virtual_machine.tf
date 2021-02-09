resource "azurerm_linux_virtual_machine" "vm" {
  name                = "aws_azure_vpn_test_server"
  location            = var.azure_location
  resource_group_name = var.azure_resource_group_name
  size                = "Standard_F2"
  admin_username      = "ubuntu"
  network_interface_ids = [
    azurerm_network_interface.network_interface_vm.id,
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  admin_ssh_key {
    username   = "ubuntu"
    public_key = var.azure_public_key_openssh
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
  tags = merge(
    var.azure_user_tags,
    {
      Name = "aws_azure_vpn_test_server"
    }
  )
}
