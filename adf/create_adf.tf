resource "azurerm_resource_group" "example" {
  name     = "rg-kb799"
  location = "West Europe"
}

resource "azurerm_data_factory" "example" {
  name                = "adf-kb799"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}