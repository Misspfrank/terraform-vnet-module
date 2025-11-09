variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "location" {
  type        = string
  description = "Azure location/region for the vnet"
}

# Instead of creating a new resource group, the module will accept an existing RG name.
variable "resource_group_name" {
  type        = string
  description = "Name of the existing Resource Group (the module will reference it)"
}

variable "address_space" {
  type        = list(string)
  description = "Address space(s) for the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the vnet"
  default     = {}
}