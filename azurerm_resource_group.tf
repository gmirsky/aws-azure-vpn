resource "azurerm_resource_group" "resource_group" {
  name     = "rg-aws-vpn"
  location = module.azure_region.location
  tags = merge(
    module.azure_user_tags.tags,
    {
      Name = "rg-aws-vpn"
    }
  )
}
#