resource "azurerm_resource_group" "example" {
  name     = "rg-adf-kb799"
  location = "West Europe"
}

resource "azurerm_data_factory" "example" {
  name                = "adf-kb799"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  github_configuration {
      account_name = "rishabh-trivedi23"
      branch_name = "main"
      git_url = "https://github.com"
      repository_name = "Terraform"
      root_folder = "/"
  }
}
