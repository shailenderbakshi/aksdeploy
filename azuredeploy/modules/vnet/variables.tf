variable "name" {
}

variable "location" {
  default = "uksouth"
}

variable "network_address_space" {
}

variable "aks_subnet_address_prefix" {
}

variable "aks_subnet_address_name" {
}

variable "appgw_subnet_address_prefix" {
}

variable "appgw_subnet_address_name" {
}

variable "environment" {
}

variable "resource_group_name" {
  type        = string
  description = "Prefix for the Resource Groups."
  default = ""
}
