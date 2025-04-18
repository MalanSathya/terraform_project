
resource "azurerm_log_analytics_workspace" "log_analytics" {
  name                = "n01639496-law"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags = var.tags
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "n01639496sa"
  location                 = var.location
  resource_group_name      = var.resource_group_name
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = var.tags
}

resource "azurerm_recovery_services_vault" "recovery_vault" {
  name                = "n01639496-rsv"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
  tags = var.tags
}

