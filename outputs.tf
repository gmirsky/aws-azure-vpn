output "location" {
  description = "Converted Azure region in standard format"
  value       = module.azure_region.location
}

output "location_short" {
  description = "Converted Azure region in short format for resource naming purpose"
  value       = module.azure_region.location_short
}

output "location_cli" {
  description = "Converted Azure region in Azure CLI name format"
  value       = module.azure_region.location_cli
}

output "azure_user_tags" {
  description = "Azure user tags"
  value       = module.azure_user_tags.tags
}

output "aws_user_tags" {
  description = "AWS user tags"
  value       = module.aws_user_tags.tags
}

output "tls_private_key" {
  description = "TLS private key data"
  value       = tls_private_key.this
}

output "module_key_pair" {
  description = "Key pair data"
  value       = module.key-pair
}

# output "azure_vm_public_ip" {
#   value = module.create_test_vms.azure_vm_public_ip
# }

# output "azure_vm_private_ip" {
#   value = module.create_test_vms.azure_vm_private_ip
# }

# output "aws_vm_public_ip" {
#   value = module.create_test_vms.aws_vm_public_ip
# }

# output "aws_vm_private_ip" {
#   value = module.create_test_vms.aws_vm_private_ip
#}

output "create_test_vms" {
  value = module.create_test_vms
}
