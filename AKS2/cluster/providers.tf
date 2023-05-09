terraform {
  required_version = ">=1.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.11.0, <4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
 }

    backend "azurerm" {
        resource_group_name  = var.rgname
        storage_account_name = var.storage_account_name
        container_name       = var.container_name
        key                  = "terraform.tfstate"
    }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

provider "random" {}