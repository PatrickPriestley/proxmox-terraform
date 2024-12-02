resource "proxmox_vm_qemu" "ubuntu_vm" {
  name = "ubuntu-server-new"  # Make sure this is different
  target_node = var.proxmox_node
  vmid = var.vmid
  
  clone = "ubuntu-server-template"
  full_clone = true

  # Force cloud-init to run
  os_type = "cloud-init"
  
  # Ensure unique IP
  ipconfig0 = "ip=${var.vm_ip}/24,gw=${var.gateway_ip}"
  
  # Force new credentials
  ciuser = var.vm_username
  cipassword = var.vm_password
  sshkeys = var.ssh_key

  cores = 2
  memory = 2048
  agent = 1
}