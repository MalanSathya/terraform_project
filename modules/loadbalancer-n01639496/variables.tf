
variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "vm_ids" {
  description = "List of VM IDs to associate with the load balancer"
  type        = list(string)
  default     = []
}

variable "location" {
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet for the Load Balancer"
  type        = string
}

variable "tags" {
  type = map(string)
  default = {
    Assignment     = "CCGC 5502 Automation Assignment"
    Name          = "Malan.VenkatesanSathyanaarayan"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}

