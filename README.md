# Proxmox Terraform Module

This repository contains a simple Terraform module for managing Proxmox resources.

## Requirements

- [Terraform](https://www.terraform.io/downloads.html) >= 0.12
- Proxmox VE
- A Proxmox VM template

## Usage

### Create a `terraform.tfvars` file to define variables:

    ```hcl
    proxmox_api_url         = "https://your-proxmox-server:8006/api2/json"
    proxmox_api_token_id    = "your-proxmox-api-token-id"
    proxmox_api_token_secret = "your-proxmox-api-token-secret"
    proxmox_node_name       = "your-proxmox-node-name"
    proxmox_vm_id           = 100
    proxmox_vm_name         = "your-proxmox-vm-name"
    proxmox_vm_memory       = 2048
    proxmox_vm_cores        = 2
    ```

### Inputs

    | Name                     | Description                                      | Type   | Default | Required |
    |--------------------------|--------------------------------------------------|--------|---------|----------|
    | `proxmox_api_url`        | The URL of the Proxmox API                       | string | n/a     | yes      |
    | `proxmox_api_token_id`   | The ID of the Proxmox API token                  | string | n/a     | yes      |
    | `proxmox_api_token_secret` | The secret of the Proxmox API token             | string | n/a     | yes      |
    | `proxmox_node_name`       | The name of the Proxmox node                      | string | n/a     | yes      |
    | `proxmox_vm_id`           | The ID of the Proxmox VM                          | number | n/a     | yes      |
    | `proxmox_vm_name`         | The name of the Proxmox VM                        | string | n/a     | yes      |
    | `proxmox_vm_memory`       | The amount of memory for the Proxmox VM (in MB)   | number | n/a     | yes      |
    | `proxmox_vm_cores`        | The number of CPU cores for the Proxmox VM        | number | n/a     | yes      |
    | `example`                | An example input variable                        | string | `""`    | no       |

## Authors

- [Patrick Priestley](https://github.com/patrickpriestley)