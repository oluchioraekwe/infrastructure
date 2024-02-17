resource "azurerm_linux_virtual_machine" "vm1" {
  name                            = "${var.linux-vm-name}-vm"
  resource_group_name             = azurerm_resource_group.main.name
  location                        = azurerm_resource_group.main.location
  size                            = var.linux-vm-size
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = var.password-auth
  network_interface_ids = [
    azurerm_network_interface.vm-nic.id,
  ]
  os_disk {
    caching              = var.disk-cache
    storage_account_type = var.disk-store-acc
  }

  source_image_reference {
    publisher = var.source-image-publisher
    offer     = var.source-image-offer
    sku       = var.source-image-sku
    version   = var.source-image-version
  }
}