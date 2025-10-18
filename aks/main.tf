resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "souravAKSCluster"
  location            = var.rg_location
  resource_group_name = var.rg_name
  dns_prefix          = "souravaksdns"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    load_balancer_sku = "standard"
  }

  tags = {
    Environment = "Production"
    Project     = "SouravProject"
  }
  
}