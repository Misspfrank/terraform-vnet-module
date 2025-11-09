output "vnet_id" {
  description = "The ID of the created virtual network"
  value       = azurerm_virtual_network.this.id
}

output "vnet_name" {
  description = "The name of the virtual network"
  value       = azurerm_virtual_network.this.name
}

output "vnet_address_space" {
  description = "Address space of the vnet"
  value       = azurerm_virtual_network.this.address_space
}