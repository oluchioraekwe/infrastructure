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
  address_prefixes     = var.vnet-cidr
  service_endpoints    = var.subnet-service-endpoint
}

resource "azurerm_network_interface" "vm-nic" {
  name                = "${var.linux-nic-name}-nic"
  location            = var.nic-location
  resource_group_name = azurerm_resource_group.main.name

  ip_configuration {
    name                          = var.nic-ip-config-name
    subnet_id                     = azurerm_subnet.vm-sub.id
    private_ip_address_allocation = var.nic-ip-allocation
    public_ip_address_id          = azurerm_public_ip.vmpublicIp.id

  }
}

resource "azurerm_network_interface" "window-vm" {
  name                = "${var.window-nic-name}-nic"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  ip_configuration {
    name                          = var.nic-ip-config-name
    subnet_id                     = azurerm_subnet.vm-sub.id
    private_ip_address_allocation = var.nic-ip-allocation
    # public_ip_address_id          = azurerm_public_ip.vmpublicIp.id
  }
}

# Create public IPs
resource "azurerm_public_ip" "vmpublicIp" {
  name                = var.public_ip_name
  resource_group_name = azurerm_resource_group.main.name
  location            = var.vnet-location
  allocation_method   = var.nic-ip-allocation
  tags                = var.tag
}

# Create Network Security Group and rule
module "security-group" {
  source      = "./modules"
  sg-name     = var.sg-name
  sg-location = var.vnet-location
  sg-rg-name  = azurerm_resource_group.main.name
  tag         = var.tag
}

resource "azurerm_subnet_network_security_group_association" "sg-subnet" {
  subnet_id                 = azurerm_subnet.vm-sub.id
  network_security_group_id = module.security-group.sg-id
}