variable "resource_group_location" {
  description = "Resource group location"
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

variable "vm_name" {
  description = "Virtual machine name"
  type        = string
  default     = "vm-hw6-1"
}

variable "vm_size" {
  description = "Virtual machine size"
  type        = string
  default     = "Standard_B1s"
}

variable "public_ip_name" {
  description = "Public ip name"
  type        = string
  default     = "pip-hw6-1"
}

variable "nic_name" {
  description = "NIC name"
  type        = string
  default     = "nic-hw6-1"
}

variable "nsg_name" {
  description = "Network security group name"
  type        = string
  default     = "nsg-hw6-1"
}

variable "vm_admin_username" {
  description = "Virtual machine admin username"
  type        = string
  default     = "azureadmin"
}

variable "user_data" {
  description = "Source user_data"
  type        = string
  default     = "user_data/install_grafana.sh"
}

variable "public_key" {
  description = "Source public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}