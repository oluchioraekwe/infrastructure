rg_name       = "rg"
rg_location   = "East US"
vnet-name     = "vm"
vnet-location = "East US"
vnet-cidr     = ["10.0.0.0/16"]
subnet-name   = "vm-sub"
subnet-cidr   = ["10.0.1.0/24"]
tag = {
  "Environment" = "Development"
}

linux-nic-name           = "vm1"
window-nic-name          = "vm2"
nic-ip-config-name       = "nic-ip"
nic-ip-allocation        = "Dynamic"
nic-location             = "East US"
disk-cache               = "ReadWrite"
disk-store-acc           = "Standard_LRS"
linux-image-publisher    = "Canonical"
linux-image-offer        = "0001-com-ubuntu-server-jammy"
linux-image-sku          = "22_04-lts"
linux-image-version      = "latest"
username                 = "adminuser"
password                 = "P@$$w0rd1234!"
linux-vm-name            = "test"
windows-vm-name          = "atore"
vm-size                  = "Standard_B1s"
public_ip_name           = "vmpublicIp"
public_ip_allocation     = "Dynamic"
sg-name                  = "ssh-public"
storage-location         = "East US"
storage-account-tier     = "Standard"
storage-replication      = "LRS"
storage-container-name   = "vmstore"
storage-container-access = "blob"
storage-account-name     = "vmolustore"
user-ad-name             = "myuserad"
role-definition          = "Storage Account Contributor"
vm-id-type               = "UserAssigned"
subnet-service-endpoint  = ["Microsoft.Storage"]
storage-network-action   = "Deny"
storage-ip-rule          = ["100.0.0.1"]
delaytime                = "20s"
window-image-publisher   = "MicrosoftWindowsServer"
window-image-offer       = "WindowsServer"
window-image-sku         = "2016-Datacenter"
window-image-version     = "latest"