
resource "azurerm_resource_group" "rgroup" {
  name     = "n01639496-RG"
  location = var.location
  tags = var.tags
}

