terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.67.0"
    }
  }
  backend "azurerm" {} 
}

provider "azurerm" {
  # Configuration options
  subscription_id = "e8d3e0f5-0b3e-4121-be0b-58a7e13e93e4"
  features {}
}

resource "azurerm_resource_group" "anooprg" {
  name     = "anooprg"
  location = "Central India"
}
resource "azurerm_storage_account" "anoop_sa" {
  name                     = "anoopsa112233445512345"
  resource_group_name      = azurerm_resource_group.anooprg.name
  location                 = azurerm_resource_group.anooprg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}
