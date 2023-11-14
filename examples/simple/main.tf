module "aks" {
  source = "../../"

  kubernetes_version  = "1.25.6"
  create_aks          = true
  name                = format("%s-%s-mobile", var.name, var.environment)
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = replace(format("%s-%s", var.name, var.environment), "/[\\W_]/", "-")
  default_node_pool = [
    {
      name                   = "default"
      node_count             = var.node_count
      vm_size                = var.vm_size # "Standard_DS2_v2"
      enable_host_encryption = false
      vnet_subnet_id         = var.vnet_subnet_id
      os_disk_size_gb        = var.os_disk_size_gb #30
      enable_auto_scaling    = true
      min_count              = var.node_count
      max_count              = 5
      upgrade_settings = [
        {
          max_surge = 25
        }
      ]
    }
  ]

  ingress_application_gateway = [
    {
      gateway_name = format("%s-%s-ingress", var.name, var.environment)
      subnet_id    = var.public_subnets_id
    }
  ]
  key_vault_secrets_provider = [
    {
      secret_rotation_enabled = true
    }
  ]

  network_profile = [
    {
      network_plugin    = "azure"
      load_balancer_sku = "standard"
    }
  ]

  vnet_id = var.vnet_id

  identity = [{
    type = "SystemAssigned"
  }]

  auto_scaler_profile = [
    { max_unready_nodes = 1 }
  ]
  /* workload_autoscaler_profile = [
    { keda_enabled = false }
  ] */

  oms_agent = [
    { log_analytics_workspace_id = var.log_analytics_workspace_id }
  ]

  tags = var.tags

  additional_node_pools = {
    "addon" = {
      node_count             = var.node_count
      vm_size                = var.vm_size
      enable_host_encryption = false
      vnet_subnet_id         = var.vnet_subnet_id
      os_disk_size_gb        = var.os_disk_size_gb
      enable_auto_scaling    = true
      min_count              = var.node_count
      max_count              = 5
      upgrade_settings = [
        {
          max_surge = 25
        }
      ]

    }
  }
}
