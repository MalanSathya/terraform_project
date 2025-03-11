
resource "azurerm_lb" "loadbalancer" {
  name                = "n01639496-lb"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                          = "PrivateIP"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.0.1.10"
  }

  tags = var.tags
}

