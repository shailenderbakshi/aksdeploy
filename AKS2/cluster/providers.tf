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
        resource_group_name  = "AZLZ-project-tstate-rg"
        storage_account_name = "azlzprojecttfstate22513"
        container_name       = "landingzonetfstate"
        key                  = "aks-actions.tfstate"
    }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }

    key_vault {
     purge_soft_delete_on_destroy    = true
     recover_soft_deleted_key_vaults = true
    }
  }
}

provider "random" {}