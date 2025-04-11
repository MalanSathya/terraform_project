resource "null_resource" "linux_vm_provisioner" {
  for_each = toset([for i in range(1, var.linux_vm_count + 1) : tostring(i)])

  depends_on = [azurerm_linux_virtual_machine.vm]

  provisioner "remote-exec" {
    inline = [
      "hostname"
    ]
  }

  connection {
    type        = "ssh"
    user        = var.linux_admin_username
    private_key = file(replace(var.ssh_public_key_path, ".pub", ""))  # Automatically infer private key path
    #public_key  = file(var.ssh_public_key_path)
    host        = azurerm_public_ip.linux_pip[each.key].ip_address
  }
}
