terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.80.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "28ed73f5-4bb4-4064-bf48-b520cc638475"
}