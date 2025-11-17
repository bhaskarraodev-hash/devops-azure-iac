variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "centralus"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "elekta-devops-test"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefix" {
  description = "Address prefix for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "vm_size" {
  description = "Size of the Windows virtual machines"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Admin username for the Windows VMs"
  type        = string
  default     = "Elekta"
}

variable "admin_password" {
  description = "Admin password for the Windows VMs"
  type        = string
  sensitive   = true
  default     = "ElektaDevopsTest123!"
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    environment = "dev"
    project     = "devops-assessment"
    owner       = "bhaskar"
  }
}
