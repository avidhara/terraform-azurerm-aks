output "id" {
  description = " The Kubernetes Managed Cluster ID."
  value       = try(azurerm_kubernetes_cluster.this[0].id, "")
}

output "fqdn" {
  description = " The Kubernetes Managed Cluster ID."
  value       = try(azurerm_kubernetes_cluster.this[0].fqdn, "")
}

output "private_fqdn" {
  description = " The Kubernetes Managed Cluster ID."
  value       = try(azurerm_kubernetes_cluster.this[0].private_fqdn, "")
}

output "portal_fqdn" {
  description = " The Kubernetes Managed Cluster ID."
  value       = try(azurerm_kubernetes_cluster.this[0].portal_fqdn, "")
}

output "ingress_application_gateway" {
  description = " The Kubernetes Managed Cluster ID."
  value       = try(azurerm_kubernetes_cluster.this[0].ingress_application_gateway, [])
}
