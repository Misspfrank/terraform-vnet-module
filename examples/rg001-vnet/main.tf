#terraform {
  #required_version = ">= 1.3"
  #backend "local" {} # change to azurerm backend for remote state in prod
#}

#provider "azurerm" {
  #features {}
#}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "my_vnet" {
  source              = "../../modules/vnet"
  vnet_name           = "example-vnet-rg001"
  resource_group_name = "RG001" # your existing RG
  # location optional: empty -> uses RG location. To force:
  location      = "West Europe"
  address_space = ["10.1.0.0/16"]
  tags = {
    environment = "dev"
    owner       = "team-x"
  }
}