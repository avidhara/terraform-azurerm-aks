output "aks_id" {
  description = "The Kubernetes Managed Cluster ID."
  value       = module.aks.id
}

output "aks_ingress_application_gateway" {
  description = "An ingress_application_gateway block"
  value       = module.aks.ingress_application_gateway
}
