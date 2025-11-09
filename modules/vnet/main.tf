# Look up the existing resource group by name.
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "this" {
  name                = var.vnet_name
  location            = var.location != "" ? var.location : data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name

  address_space = var.address_space

  tags = var.tags
}