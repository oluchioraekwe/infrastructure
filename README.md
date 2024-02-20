# Infrastructure
This is a repository for deploying resources to azure cloud using Terraform

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azapi"></a> [azapi](#requirement\_azapi) | 1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.75.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azapi"></a> [azapi](#provider\_azapi) | 1.5.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.75.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.0.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_security-group"></a> [security-group](#module\_security-group) | ./modules | n/a |

## Resources

| Name | Type |
|------|------|
| [azapi_resource.ssh_public_key](https://registry.terraform.io/providers/azure/azapi/1.5/docs/resources/resource) | resource |
| [azapi_resource_action.ssh_public_key_gen](https://registry.terraform.io/providers/azure/azapi/1.5/docs/resources/resource_action) | resource |
| [azurerm_linux_virtual_machine.vm1](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.vm-nic](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/network_interface) | resource |
| [azurerm_public_ip.vmpublicIp](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/public_ip) | resource |
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/resource_group) | resource |
| [azurerm_subnet.vm-sub](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/subnet) | resource |
| [azurerm_subnet_network_security_group_association.sg-subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_virtual_network.vmnetwork](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/virtual_network) | resource |
| [random_pet.rg_name](https://registry.terraform.io/providers/hashicorp/random/3.0/docs/resources/pet) | resource |
| [random_pet.ssh_key_name](https://registry.terraform.io/providers/hashicorp/random/3.0/docs/resources/pet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_disk-cache"></a> [disk-cache](#input\_disk-cache) | The Type of Caching which should be used for the Internal OS Disk. Possible values are None, ReadOnly and ReadWrite. | `string` | n/a | yes |
| <a name="input_disk-store-acc"></a> [disk-store-acc](#input\_disk-store-acc) | The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard\_LRS, StandardSSD\_LRS, Premium\_LRS, StandardSSD\_ZRS and Premium\_ZRS. Changing this forces a new resource to be created | `string` | n/a | yes |
| <a name="input_linux-vm-name"></a> [linux-vm-name](#input\_linux-vm-name) | The name of the Linux Virtual Machine. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_linux-vm-size"></a> [linux-vm-size](#input\_linux-vm-size) | The SKU which should be used for this Virtual Machine, such as Standard\_F2. | `string` | n/a | yes |
| <a name="input_nic-ip-allocation"></a> [nic-ip-allocation](#input\_nic-ip-allocation) | The allocation method used for the Private IP Address. Possible values are Dynamic and Static. | `string` | n/a | yes |
| <a name="input_nic-ip-config-name"></a> [nic-ip-config-name](#input\_nic-ip-config-name) | A name used for this IP Configuration. | `string` | n/a | yes |
| <a name="input_nic-location"></a> [nic-location](#input\_nic-location) | The location where the Network Interface should exist. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_nic-name"></a> [nic-name](#input\_nic-name) | The name of the Network Interface. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_password-auth"></a> [password-auth](#input\_password-auth) | To set is password will be required for the authentication or not | `bool` | `false` | no |
| <a name="input_public_ip_allocation"></a> [public\_ip\_allocation](#input\_public\_ip\_allocation) | Defines the allocation method for this IP address. Possible values are Static or Dynamic. | `string` | n/a | yes |
| <a name="input_public_ip_name"></a> [public\_ip\_name](#input\_public\_ip\_name) | Specifies the name of the Public IP. Changing this forces a new Public IP to be created. | `string` | n/a | yes |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_sg-name"></a> [sg-name](#input\_sg-name) | Specifies the name of the network security group. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_source-image-offer"></a> [source-image-offer](#input\_source-image-offer) | Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_source-image-publisher"></a> [source-image-publisher](#input\_source-image-publisher) | Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_source-image-sku"></a> [source-image-sku](#input\_source-image-sku) | Specifies the SKU of the image used to create the virtual machines. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_source-image-version"></a> [source-image-version](#input\_source-image-version) | Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_subnet-cidr"></a> [subnet-cidr](#input\_subnet-cidr) | The address prefixes to use for the subnet. | `list(string)` | n/a | yes |
| <a name="input_subnet-name"></a> [subnet-name](#input\_subnet-name) | The name of the subnet. Changing this forces a new resource to be created | `string` | n/a | yes |
| <a name="input_tag"></a> [tag](#input\_tag) | Tags for resources | `map(string)` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_vnet-cidr"></a> [vnet-cidr](#input\_vnet-cidr) | The address space that is used the virtual network. You can supply more than one address space. | `list(string)` | n/a | yes |
| <a name="input_vnet-location"></a> [vnet-location](#input\_vnet-location) | The location/region where the virtual network is created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_vnet-name"></a> [vnet-name](#input\_vnet-name) | The name of the virtual network. Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_data"></a> [key\_data](#output\_key\_data) | The value of the rsa key for the linux vm |
| <a name="output_vm-Ip"></a> [vm-Ip](#output\_vm-Ip) | The value of the private Ip address of the linux virtual machine |
| <a name="output_vm-Ip_public"></a> [vm-Ip\_public](#output\_vm-Ip\_public) | The public ip address of the virtual machine |
<!-- END_TF_DOCS -->
