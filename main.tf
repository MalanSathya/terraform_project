
locals {
  common_tags = {
    Assignment     = "CCGC 5502 Automation Assignment"
    Name           = "n01639496.lastname"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}

module "rgroup-n01639496" {
  source   = "./modules/rgroup-n01639496"
  location = var.location
  tags     = local.common_tags
}

module "network-n01639496" {
  source              = "./modules/network-n01639496"
  resource_group_name = module.rgroup-n01639496.resource_group_name
  location            = var.location
  tags                = local.common_tags
}

module "common-n01639496" {
  source              = "./modules/common-n01639496"
  resource_group_name = module.rgroup-n01639496.resource_group_name
  location            = var.location
  tags                = local.common_tags
}

module "vmlinux-n01639496" {
  source               = "./modules/vmlinux-n01639496"
  resource_group_name  = module.rgroup-n01639496.resource_group_name
  location             = var.location
  subnet_id            = module.network-n01639496.subnet_id
  storage_account_name = module.common-n01639496.storage_account_name
  linux_admin_username = var.linux_admin_username
  ssh_public_key_path  = var.ssh_public_key_path
  linux_vm_count       = var.linux_vm_count
  storage_account_uri  = module.common-n01639496.storage_account_uri
  tags                 = local.common_tags
}

module "vmwindows-n01639496" {
  source                 = "./modules/vmwindows-n01639496"
  resource_group_name    = module.rgroup-n01639496.resource_group_name
  location               = var.location
  subnet_id              = module.network-n01639496.subnet_id
  windows_admin_username = var.windows_admin_username
  windows_admin_password = var.windows_admin_password
  storage_account_uri    = module.common-n01639496.storage_account_uri
  windows_vm_count       = var.windows_vm_count
  tags                   = local.common_tags
}

module "datadisk-n01639496" {
  source              = "./modules/datadisk-n01639496"
  resource_group_name = module.rgroup-n01639496.resource_group_name
  location            = var.location
  #linux_vm_ids        = module.vmlinux-n01639496.linux_vm_ids
  #windows_vm_ids      = module.vmwindows-n01639496.windows_vm_ids
  vm_ids = concat(module.vmlinux-n01639496.linux_vm_ids, module.vmwindows-n01639496.vm_id)
  tags   = local.common_tags
}

module "loadbalancer-n01639496" {
  source              = "./modules/loadbalancer-n01639496"
  resource_group_name = module.rgroup-n01639496.resource_group_name
  location            = var.location
  #linux_vm_ids        = module.vmlinux-n01639496.linux_vm_ids
  subnet_id = module.network-n01639496.subnet_id
  vm_ids    = module.vmlinux-n01639496.linux_vm_ids
  tags      = local.common_tags
}

module "database-n01639496" {
  source              = "./modules/database-n01639496"
  resource_group_name = module.rgroup-n01639496.resource_group_name
  location            = var.location
  db_admin_username   = var.linux_admin_username
  db_admin_password   = var.windows_admin_password
  tags                = local.common_tags
}

