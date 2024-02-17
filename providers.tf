terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "storage"
    storage_account_name = "aksstore"
    container_name       = "test"
    key                  = "terraform.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  use_oidc = true
  # Configuration options
  features {}
  client_id = var.client_id
  tenant_id = var.tenant_id
  subscription_id = var.sub_id
}