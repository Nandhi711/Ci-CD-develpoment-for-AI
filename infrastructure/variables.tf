variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource group for AKS"
  type        = string
  default     = "llm-rg"
}

variable "cluster_name" {
  description = "Kubernetes cluster name"
  type        = string
  default     = "llm-aks"
}

variable "node_count" {
  description = "Number of AKS nodes"
  type        = number
  default     = 3
}

variable "vm_size" {
  description = "VM size for AKS nodes"
  type        = string
  default     = "Standard_D4s_v3"
}
