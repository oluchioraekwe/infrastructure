resource "random_pet" "rg_name" {
  prefix = var.rg_name
}
resource "azurerm_resource_group" "main" {
  name     = random_pet.rg_name.id
  location = var.rg_location
}