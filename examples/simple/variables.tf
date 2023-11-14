variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  default     = "East US"
}

variable "name" {
  type        = string
  description = "(Required) Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name."
  default     = "test"
}
variable "environment" {
  type        = string
  description = "description"
  default     = "dev"
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
  default     = "terraform-test"
}

variable "node_count" {
  type        = number
  description = "(Optional) The initial number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000"
  default     = 1
}

variable "vm_size" {
  type        = string
  description = "(Optional) The size of the Virtual Machine, such as Standard_DS2_v2"
  default     = "Standard_DS2_v2"
}

variable "os_disk_size_gb" {
  type        = number
  description = "(Optional) The size of the OS Disk which should be used for each agent in the Node Pool. Changing this forces a new resource to be created."
  default     = 30
}

variable "additional_node_pools" {
  type        = any
  description = "(Optional) Additional node pools"
  default     = {}
}

variable "retention_policy" {
  type        = any
  description = "(Optional) A retention_policy block"
  default     = []
}

variable "vnet_subnet_id" {
  type    = string
  default = ""
}

variable "tags" {
  type        = map(string)
  description = "(Optional) A mapping of tags to assign to the resource."
  default     = {}
}

variable "log_analytics_workspace_id" {
  type        = string
  description = "description"
  default     = ""
}

variable "vnet_id" {
  type        = string
  description = "description"
  default     = ""
}

variable "public_subnets_id" {
  type        = list(string)
  description = "description"
  default     = []
}
