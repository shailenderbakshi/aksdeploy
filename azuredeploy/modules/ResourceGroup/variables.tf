variable "location" {
  description = "Location of Resource Group"
  type        = string
}

variable "rsg_Count" {
  description = "The number of Resource Groups to be deployed"
  type        = number
  default     = 1
}

variable "resource_group_name" {
  type        = string
  description = "Prefix for the Resource Groups."
  default = ""
}