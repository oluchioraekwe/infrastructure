resource "azurerm_user_assigned_identity" "userad" {
  location            = azurerm_resource_group.main.location
  name                = var.user-ad-name
  resource_group_name = azurerm_resource_group.main.name
}

resource "azurerm_role_assignment" "user-role" {
  scope                = azurerm_storage_account.vmstore.id
  role_definition_name = var.role-definition
  principal_id         = azurerm_user_assigned_identity.userad.principal_id
}