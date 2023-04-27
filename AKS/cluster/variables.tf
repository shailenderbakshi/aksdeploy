
########################################################################
# AKS #
########################################################################
variable "appId" {
  description = "Azure Kubernetes Service Cluster service principal"
}

variable "password" {
  description = "Azure Kubernetes Service Cluster password"
}


########################################################################
# TAG Map #
########################################################################

variable "environment" {
  type    = string
  default = "Connectivity-Subs"
}

variable "costcenter" {
  type    = string
  default = "IT"
}

########################################################################
# Resource Group Variables
########################################################################
variable "resource_group_name" {
  type    = string
  default = "AKS-RG"
}

variable "location" {
  type    = string
  default = "uksouth"
}


########################################################################
                        # VNET Module Variables
########################################################################
variable "vnet_cidr" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
  default     = ["10.0.0.0/16"]
}

variable "subnet_names" {
  description = "A list of public subnets inside the vNet."
  type        = string
  default     = "gs-uks-hub-sub1"
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}


variable "ddos_protection_plan" {
  description = "The set of DDoS protection plan configuration"
  type = object({
    enable = bool
    id     = string
  })
  default = null

}

variable "asfw_name" {
  description = "Name for Azure Frewall)."
  type        = string
  default     = "gs-hub-fw03"
}

# variable "fw_mg_subnet_name" {
#   description = "A list of public subnets inside the vNet."
#   type        = string
#   default     = "AzureFirewallManagementSubnet"
# }

variable "fw_mg_subnet_prefix" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.4.0/24"]
}

# variable "fw_subnet_name" {
#   description = "A list of public subnets inside the vNet."
#   type        = string
#   default     = "AzureFirewallSubnet"
# }

variable "fw_subnet_prefix" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.5.0/25"]
}

variable "bastionname" {
  description = "Bation host name"
  type        = string
  default     = "gs-uks-bas"
}


variable "bationsubnet" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.5.128/25"]
}

variable "Gatewaysubnet_name" {
  description = "VPN Gatway Subnet name"
  type        = string
  default     = "Gatewaysubnet"
}
variable "Gatewaysubnet" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.6.0/25"]
}
variable "nsg_name" {
  type    = string
  default = "LZ-CONNSUB-nsg"
}

variable "rt_name" {
  type    = string
  default = "LZ-CONNSUB-rt"
}
variable "vnet_name" {
  description = "Name of the vnet to create"
  type        = string
  default     = "gs-uks-hub-vnet"
}

# If no values specified, this defaults to Azure DNS
variable "dns_servers" {
  description = "The DNS servers to be used with vNet."
  type        = list(string)
  default     = []
}

variable "apigwname" {
  description = "Name of the vnet to create"
  type        = string
  default     = "gs-uks-ag"
}

variable "APIGatewaysubnet-fe-name" {
  description = "Name of the API Gateway subnet frontend"
  type        = string
  default     = "gs-uks-ag-sub-fe"
}

variable "APIGatewaysubnet-be-name" {
  description = "Name of the API Gateway subnet backend"
  type        = string
  default     = "gs-uks-ag-sub-be"
}

variable "APIGatewaysubnet-be" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.10.0/24"]
}

variable "APIGatewaysubnet-fe" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.11.0/24"]
}
########################################################################
                        # Azure Firewall Module Variables
########################################################################

########################################################################
                        # Azure storage account Variables
########################################################################
variable storageaccount_names {
    type = list(string)
    description = "List of all storage account names"
    default     = ["gsukssa01","gsukssa02","gsukssa03"]
}

##############TAGS#####################################
variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = map(string)

  default = {
    ENV = "HUBSUB"
  }
}
