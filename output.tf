output "vm-Ip" {
  value       = azurerm_linux_virtual_machine.vm1.private_ip_address
  description = "The value of the private Ip address of the linux virtual machine"
}

output "key_data" {
  value       = jsondecode(azapi_resource_action.ssh_public_key_gen.output).privateKey
  description = "The value of the rsa key for the linux vm"
}

output "vm-Ip_public" {
  value       = azurerm_linux_virtual_machine.vm1.public_ip_address
  description = "The public ip address of the virtual machine"
}