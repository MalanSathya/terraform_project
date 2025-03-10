terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg-n01639496"
    storage_account_name = "tfstaten01639496sa"
    container_name       = "tfstaten01639496cont"
    key                  = "terraform.tfstate"
  }
}

