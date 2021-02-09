locals {
  tags = merge(
    var.custom_tags,
    {
      terraform_managed         = true
      environment               = var.environment
      modified                  = formatdate("EEEE, DD-MMM-YY hh:mm:ss ZZZ", timestamp())
      client_id                 = data.azurerm_client_config.current.client_id
      tenant_id                 = data.azurerm_client_config.current.tenant_id
      subscription_id           = data.azurerm_client_config.current.subscription_id
      object_id                 = data.azurerm_client_config.current.object_id
      display_name              = data.azuread_user.current.display_name
      user_principal_name       = data.azuread_user.current.user_principal_name
      mail_nickname             = data.azuread_user.current.mail_nickname
      subscription_display_name = data.azurerm_subscription.current.display_name
    }
  )
}