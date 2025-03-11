
variable "resource_group_name" {
  type = string
}

variable "location" {
  type    = string
  default = "Canada Central"
}

variable "subnet_id" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "storage_account_uri" {
  type = string
}

variable "linux_admin_username" {
  type    = string
  default = "n01639496"
}

variable "ssh_public_key_path" {
  type    = string
  default = "/home/n01639496/.ssh/id_rsa.pub"
}

variable "linux_vm_count" {
  type    = number
  default = 2
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

