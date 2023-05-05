variable "location" {
  description = "Location of Resource Group"
  type        = string
}

variable "rsg_Count" {
  description = "The number of Resource Groups to be deployed"
  type        = number
  default     = 1
}

variable "rsg_Name" {
  type        = string
  description = "Prefix for the Resource Groups."
  default = ""
}