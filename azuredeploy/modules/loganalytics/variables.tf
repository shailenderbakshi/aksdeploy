########################################################################
# Resource Group Variables
########################################################################
variable "resource_group_name" {
  type    = string
  default = ""
}

variable log_analytics_workspace_name {
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
}

variable "location" {
  default = "uksouth"
}

variable "environment" {
}