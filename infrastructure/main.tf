resource "azurerm_kubernetes_cluster" "aks" {
  name                = "llm-aks"
  location            = "eastus"
  resource_group_name = "llm-rg"
  dns_prefix         = "llmaks"

  private_cluster_enabled = true  # Use private IPs instead of public IPs

  default_node_pool {
    name       = "agentpool"
    vm_size    = "Standard_D2s_v3"
    node_count = 1
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
  }
}
