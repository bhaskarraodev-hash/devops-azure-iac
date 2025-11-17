output "vm_names" {
  description = "Names of the virtual machines"
  value       = azurerm_windows_virtual_machine.vm[*].name
}

output "vm_public_ips" {
  description = "Public IP addresses of the VMs"
  value       = azurerm_public_ip.vm_pip[*].ip_address
}

output "vm_private_ips" {
  description = "Private IP addresses of the VMs"
  value = [
    for nic in azurerm_network_interface.vm_nic :
    nic.ip_configuration[0].private_ip_address
  ]
}

output "resource_group_name" {
  description = "Resource group name"
  value       = azurerm_resource_group.rg.name
}
