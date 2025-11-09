terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-day04"
    storage_account_name = "day04135"
    container_name       = "tfstate"
    key                  = "rg001-vnet.tfstate"
  }
}