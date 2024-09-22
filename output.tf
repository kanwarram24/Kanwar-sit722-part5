# Outputs the container registry login server URL
output "container_registry_url" {
  value = azurerm_container_registry.container_registry.login_server
}

# Outputs the Kubernetes cluster name
output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.cluster.name
}

# Outputs the resource group name
output "resource_group_name" {
  value = azurerm_resource_group.flixtube.name
}
