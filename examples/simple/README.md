# Example for using AKS Terraform module

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aks"></a> [aks](#module\_aks) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_node_pools"></a> [additional\_node\_pools](#input\_additional\_node\_pools) | (Optional) Additional node pools | `any` | `{}` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | description | `string` | `"dev"` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | `"East US"` | no |
| <a name="input_log_analytics_workspace_id"></a> [log\_analytics\_workspace\_id](#input\_log\_analytics\_workspace\_id) | description | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name. | `string` | `"test"` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | (Optional) The initial number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000 | `number` | `1` | no |
| <a name="input_os_disk_size_gb"></a> [os\_disk\_size\_gb](#input\_os\_disk\_size\_gb) | (Optional) The size of the OS Disk which should be used for each agent in the Node Pool. Changing this forces a new resource to be created. | `number` | `30` | no |
| <a name="input_public_subnets_id"></a> [public\_subnets\_id](#input\_public\_subnets\_id) | description | `list(string)` | `[]` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created. | `string` | `"terraform-test"` | no |
| <a name="input_retention_policy"></a> [retention\_policy](#input\_retention\_policy) | (Optional) A retention\_policy block | `any` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | (Optional) The size of the Virtual Machine, such as Standard\_DS2\_v2 | `string` | `"Standard_DS2_v2"` | no |
| <a name="input_vnet_id"></a> [vnet\_id](#input\_vnet\_id) | description | `string` | `""` | no |
| <a name="input_vnet_subnet_id"></a> [vnet\_subnet\_id](#input\_vnet\_subnet\_id) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aks_id"></a> [aks\_id](#output\_aks\_id) | The Kubernetes Managed Cluster ID. |
| <a name="output_aks_ingress_application_gateway"></a> [aks\_ingress\_application\_gateway](#output\_aks\_ingress\_application\_gateway) | An ingress\_application\_gateway block |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
