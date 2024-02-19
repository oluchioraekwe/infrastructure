resource "azurerm_virtual_network" "vmnetwork" {
  name                = "${var.vnet-name}-vnet"
  location            = var.vnet-location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = var.vnet-cidr
  tags                = var.tag
  depends_on          = [azurerm_resource_group.main]
}

resource "azurerm_subnet" "vm-sub" {
  name                 = var.subnet-name
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.vmnetwork.name
  address_prefixes     = var.subnet-cidr
}

resource "azurerm_network_interface" "vm-nic" {
  name                = "${var.nic-name}-nic"
  location            = var.nic-location
  resource_group_name = azurerm_resource_group.main.name

  ip_configuration {
    name                          = var.nic-ip-config-name
    subnet_id                     = azurerm_subnet.vm-sub.id
    private_ip_address_allocation = var.nic-ip-allocation
  }
}