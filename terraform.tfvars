rg_name       = "compute"
rg_location   = "East US"
vnet-name     = "vm"
vnet-location = "East US"
vnet-cidr     = ["10.0.0.0/16"]
subnet-name   = "vm-sub"
subnet-cidr   = ["10.0.1.0/24"]
tag = {
  "Environment" = "Development"
}
nic-name               = "vm1"
nic-ip-config-name     = "nic-ip"
nic-ip-allocation      = "Dynamic"
nic-location           = "East US"
disk-cache             = "ReadWrite"
disk-store-acc         = "Standard_LRS"
source-image-publisher = "Canonical"
source-image-offer     = "0001-com-ubuntu-server-jammy"
source-image-sku       = "22_04-lts"
source-image-version   = "latest"
username               = "adminuser"
password               = "P@$$w0rd1234!"
linux-vm-name          = "test"
linux-vm-size          = "Standard_F2"