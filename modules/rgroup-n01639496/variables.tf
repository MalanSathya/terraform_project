
variable "location" {
  type    = string
  default = "Canada Central"
}

variable "tags" {
  type = map(string)
  default = {
    Assignment     = "CCGC 5502 Automation Assignment"
    Name          = "n01639496.lastname"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}

