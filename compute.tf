resource "azurerm_linux_virtual_machine" "vm1" {
  name                            = "${var.linux-vm-name}-vm"
  resource_group_name             = azurerm_resource_group.main.name
  location                        = azurerm_resource_group.main.location
  size                            = var.vm-size
  admin_username                  = var.username
  admin_password                  = var.password
  user_data                       = filebase64("${path.module}/scripts/app.sh")
  disable_password_authentication = var.password-auth
  network_interface_ids = [
    azurerm_network_interface.vm-nic.id,
  ]
  identity {
    type         = var.vm-id-type
    identity_ids = [azurerm_user_assigned_identity.userad.id]
  }
  os_disk {
    caching              = var.disk-cache
    storage_account_type = var.disk-store-acc
  }

  source_image_reference {
    publisher = var.linux-image-publisher
    offer     = var.linux-image-offer
    sku       = var.linux-image-sku
    version   = var.linux-image-version
  }
}

resource "azurerm_windows_virtual_machine" "vm2" {
  name                = var.windows-vm-name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  size                = var.vm-size
  admin_username      = var.username
  admin_password      = var.password
  network_interface_ids = [
    azurerm_network_interface.window-vm.id,
  ]
  identity {
    type         = var.vm-id-type
    identity_ids = [azurerm_user_assigned_identity.userad.id]
  }

  os_disk {
    caching              = var.disk-cache
    storage_account_type = var.disk-store-acc
  }

  source_image_reference {
    publisher = var.window-image-publisher
    offer     = var.window-image-offer
    sku       = var.window-image-sku
    version   = var.window-image-version
  }
}