
variable "resource_group_name" {
  type = string
}

variable "location" {
  type    = string
  default = "Canada Central"
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

