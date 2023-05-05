// resource "azurerm_resource_group" "rg" {
//   location = var.location
//   name     = var.resource_group_name
//   tags = {
//     Environment = var.environment
//   }
// }

resource "azurerm_kubernetes_cluster" "k8s" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.name

  // node_resource_group = var.resource_group_name

  linux_profile {
    admin_username = "ubuntu"

    ssh_key {
      key_data = var.ssh_public_key
    }
  }

  default_node_pool {
    name                 = "agentpool"
    node_count           = var.agent_count
    vm_size              = var.vm_size
    vnet_subnet_id       = var.aks_subnet
    type                 = "VirtualMachineScaleSets"
    orchestrator_version = var.kubernetes_version
  }

  identity {
    type = "SystemAssigned"
  }

  addon_profile {
    oms_agent {
      enabled                    = var.addons.oms_agent
      log_analytics_workspace_id = var.log_analytics_workspace_id
    }
    azure_policy {
      enabled = var.addons.azure_policy
    }

ingress_application_gateway {
      enabled   = var.addons.ingress_application_gateway
      subnet_id = var.agic_subnet_id
    }

  }

  network_profile {
    load_balancer_sku = "standard"
    network_plugin    = "azure"
    service_cidr = "10.0.3.0/24"
  }

    role_based_access_control {
    enabled = var.kubernetes_cluster_rbac_enabled

    azure_active_directory {
      managed                = true
      admin_group_object_ids = [var.aks_admins_group_object_id]
    }
  }

  tags = {
    Environment = var.environment
  }
}

// data "azurerm_resource_group" "node_resource_group" {
//   name = azurerm_kubernetes_cluster.k8s.node_resource_group
//          depends_on = [
//      azurerm_kubernetes_cluster.k8s
//   ]
// }

// resource "azurerm_role_assignment" "node_infrastructure_update_scale_set" {
//   principal_id         = azurerm_kubernetes_cluster.k8s.kubelet_identity[0].object_id
//   scope                = data.azurerm_resource_group.node_resource_group.id
//   role_definition_name = "Virtual Machine Contributor"
//            depends_on = [
//      azurerm_kubernetes_cluster.k8s
//   ]
// }