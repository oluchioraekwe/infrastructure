output "sg-id" {
  value       = azurerm_network_security_group.sg-public.id
  description = "The Id for the security group rule"
}
