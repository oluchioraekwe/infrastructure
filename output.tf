output "vm-Ip" {
  value       = azurerm_linux_virtual_machine.vm1.private_ip_address
  description = "The value of the private Ip address of the linux virtual machine"
}

output "public-ip" {
  value       = azurerm_public_ip.vmpublicIp.ip_address
  description = "Public Ip address"
}

# output "key_data" {
#   value       = jsondecode(azapi_resource_action.ssh_public_key_gen.output).privateKey
#   description = "The value of the rsa key for the linux vm"
#   sensitive   = true
# }

output "vm-Ip_public" {
  value       = azurerm_windows_virtual_machine.vm2.public_ip_address
  description = "The public ip address of the virtual machine"
}

output "rg-name" {
  value       = azurerm_resource_group.main.name
  description = "The name of the resource group"
}

output "storage-name" {
  value       = azurerm_storage_account.vmstore.name
  description = "The name of storage account"
}

output "storage-key" {
  value       = azurerm_storage_account.vmstore.primary_access_key
  description = "The storage account primary access key"
  sensitive   = true
}

output "storage-connection" {
  value       = azurerm_storage_account.vmstore.primary_connection_string
  description = "Storage account connection string"
  sensitive   = true
}
