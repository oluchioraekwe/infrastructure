resource "azurerm_resource_group" "main" {
  name     = "${var.rg_name}-rg"
  location = var.rg_location
}