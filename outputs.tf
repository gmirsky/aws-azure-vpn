output "location" {
  description = "Converted Azure region in standard format"
  value       = module.azure_region.location
  sensitive   = false
}

output "location_short" {
  description = "Converted Azure region in short format for resource naming purpose"
  value       = module.azure_region.location_short
  sensitive   = false
}

output "location_cli" {
  description = "Converted Azure region in Azure CLI name format"
  value       = module.azure_region.location_cli
  sensitive   = false
}

output "azure_user_tags" {
  description = "Azure user tags"
  value       = module.azure_user_tags.tags
}

output "aws_user_tags" {
  description = "AWS user tags"
  value       = module.aws_user_tags.tags
  sensitive   = false
}

output "tls_private_key" {
  description = "TLS private key data"
  value       = tls_private_key.this
  sensitive   = true
}

output "module_key_pair" {
  description = "Key pair data"
  value       = module.key-pair
  sensitive   = false
}

output "create_test_vms" {
  value     = module.create_test_vms
  sensitive = false
}
