terraform {
  required_version = ">=0.12"
}

resource "azurerm_network_security_group" "sg-public" {
  name                = var.sg-name
  location            = var.sg-location
  resource_group_name = var.sg-rg-name

  security_rule {
    name                       = "RDP"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3000"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  tags = var.tag
}