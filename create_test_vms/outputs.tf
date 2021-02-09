output "azure_vm_public_ip" {
  value = azurerm_linux_virtual_machine.vm.public_ip_address
}

output "azure_vm_private_ip" {
  value = azurerm_linux_virtual_machine.vm.private_ip_address
}

output "aws_vm_public_ip" {
  value = aws_instance.vm.public_ip
}

output "aws_vm_private_ip" {
  value = aws_instance.vm.private_ip
}

output "aws_vm" {
  value = aws_instance.vm
}

