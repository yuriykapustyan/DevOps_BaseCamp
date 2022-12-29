variable "resource_group_location" {
  description = "Location of the resource group"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-hw6-1"
}

variable "virtual_network_name" {
  description = "Virtual network name"
  type        = string
  default     = "vnet-hw6-1"
}

variable "virtual_network_subnet_name" {
  description = "Virtual network subnet name"
  type        = string
  default     = "sub-hw6-1"
}

variable "azure_vm_name" {
  description = "Virtual machine name"
  type        = string
  default     = "vm-hw6-1"
}

variable "azure_vm_size" {
  description = "Virtual machine size"
  type        = string
  default     = "Standard_B1s"
}

variable "azure_public_ip_name" {
  description = "Public ip name"
  type        = string
  default     = "pip-hw6-1"
}

variable "azure_nic_name" {
  description = "NIC name"
  type        = string
  default     = "nic-hw6-1"
}