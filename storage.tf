
resource "azurerm_storage_account" "vmstore" {
  name                     = var.storage-account-name
  resource_group_name      = azurerm_resource_group.main.name
  location                 = var.storage-location
  account_tier             = var.storage-account-tier
  account_replication_type = var.storage-replication
  tags                     = var.tag
}

resource "time_sleep" "delay" {
  depends_on      = [azurerm_subnet.vm-sub]
  create_duration = var.delaytime
}

resource "azurerm_storage_account_network_rules" "storenetwork" {
  storage_account_id         = azurerm_storage_account.vmstore.id
  default_action             = var.storage-network-action
  ip_rules                   = var.storage-ip-rule
  virtual_network_subnet_ids = [azurerm_subnet.vm-sub.id]
  depends_on                 = [time_sleep.delay]
}
