output "azure_vm_public_ip" {
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
  description = "Azure VM Public IP address"
  sensitive   = false
}
#
output "azure_vm_private_ip" {
  value       = azurerm_linux_virtual_machine.vm.private_ip_address
  description = "Azure VM private IP address"
  sensitive   = false
}
#
output "aws_vm_public_ip" {
  value       = aws_instance.vm.public_ip
  description = "AWS EC2 public IP address"
  sensitive   = false
}
#
output "aws_vm_private_ip" {
  value       = aws_instance.vm.private_ip
  description = "AWS EC2 private IP address"
  sensitive   = false
}
#
output "aws_vm" {
  value       = aws_instance.vm
  description = "AWS VM"
  sensitive   = false
}
#