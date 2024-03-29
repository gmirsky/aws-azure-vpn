output "location" {
  value       = local.regions[var.azure_region]
  description = "Converted Azure region in standard format"
  sensitive   = false
}
#
output "location_short" {
  value       = local.short_names[var.azure_region]
  description = "Converted Azure region in short format for resource naming purpose"
  sensitive   = false
}
#
output "location_cli" {
  value       = local.cli_names[var.azure_region]
  description = "Converted Azure region in Azure CLI name format"
  sensitive   = false
}
#