data "azurerm_client_config" "current" {
}

data "azuread_user" "current" {
  object_id = data.azurerm_client_config.current.object_id
}

data "azurerm_subscription" "current" {
  subscription_id = data.azurerm_client_config.current.subscription_id
}
