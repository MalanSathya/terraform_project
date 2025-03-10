
output "windows_hostnames" {
  value = [for vm in azurerm_windows_virtual_machine.vm : vm.name]
}

output "windows_private_ips" {
  value = [for vm in azurerm_windows_virtual_machine.vm : vm.private_ip_address]
}

output "windows_public_ips" {
  value = [for i in range(0, var.windows_vm_count) : azurerm_network_interface.nic[i].private_ip_address]
}

output "windows_fqdns" {
  value = []
}

output "vm_id" {
  value = [for vm in azurerm_windows_virtual_machine.vm : vm.id]
}

#output "windows_vm_ids" {
 # value = [for vm in azurerm_windows_virtual_machine.vm : vm.id]
#}

