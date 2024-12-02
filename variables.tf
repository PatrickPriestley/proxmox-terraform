variable "proxmox_api_url" {
  description = "The URL of the Proxmox API"
  type = string
}

variable "pm_api_token_id" {
  description = "API Token ID for Proxmox"
  type = string
}

variable "pm_api_token_secret" {
  description = "API Token Secret for Proxmox"
  type = string
  sensitive = true
}

variable "proxmox_node" {
  description = "The name of the Proxmox node"
  type = string
}

variable "vmid" {
  description = "The ID for the VM"
  type = number
  default = 100
}

variable "vm_ip" {
  description = "IP address for the VM"
  type = string
}

variable "gateway_ip" {
  description = "Gateway IP address"
  type = string
}

variable "vm_username" {
  description = "Username for the VM"
  type = string
  default = "patrickpriestley"
}

variable "vm_password" {
  description = "Password for the VM user"
  type = string
  sensitive = true
}

variable "ssh_key" {
  description = "SSH public key for VM access"
  type = string
}