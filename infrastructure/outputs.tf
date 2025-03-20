output "kube_config" {
  description = "Kubeconfig file for connecting to AKS"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}

output "aks_name" {
  description = "Deployed AKS cluster name"
  value       = azurerm_kubernetes_cluster.aks.name
}
