terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.75.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0"
    }
    azapi = {
      source  = "azure/azapi"
      version = "1.5"
    }
  }
  backend "azurerm" {
    resource_group_name  = "storage"
    storage_account_name = "aksstore"
    container_name       = "test"
    key                  = "terraform.tfstate"
    use_oidc             = true
    client_id            = "2221d35a-1083-42d3-a514-1b130c15667f"
    tenant_id            = "0755a81e-ca57-47de-a8e8-8dc64b559dfc"
    subscription_id      = "416f0a23-14c4-4f97-990a-ebe5379b3d48"
  }
}

provider "azurerm" {
  # use_oidc = true
  # Configuration options
  features {}
  #   client_id = var.client_id
  #   tenant_id = var.tenant_id
  #   subscription_id = var.sub_id
}