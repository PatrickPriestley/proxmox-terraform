output "vm_ip" {
  value = proxmox_vm_qemu.ubuntu_vm.ipconfig0
  description = "The IP address of the VM"
}

output "vm_name" {
  value = proxmox_vm_qemu.ubuntu_vm.name
  description = "The name of the VM"
}