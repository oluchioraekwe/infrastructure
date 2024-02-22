# Secured Storage Account Access with Service Endpoints
This is a repository for deploying resources to azure cloud using Terraform.

The infrastructure setup is to show how to use service endpoint to access storage account. The service endpoint is attached to a subnet. The subnet is now connected to the storage account through the sercice endpoint. The blobs in the storage account cannot be accessed through the internet. Two vitual machines that shares the same subnet were created to test the connection. The windows vm is connected to internet to testing purposes

## Architecture diagram

<p align="left">
    <img src="./images/service endpoint.jpg" width="800x" />
</p>
<br><br>

## NOTE
Before commiting your changes make sure that the code passed validity checks because that are pre commit hooks that will check for code validity before commiting

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.75.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | 0.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.75.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.0.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.10.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_security-group"></a> [security-group](#module\_security-group) | ./modules | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.vm1](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.vm-nic](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/network_interface) | resource |
| [azurerm_network_interface.window-vm](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/network_interface) | resource |
| [azurerm_public_ip.vmpublicIp](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/public_ip) | resource |
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/resource_group) | resource |
| [azurerm_role_assignment.user-role](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/role_assignment) | resource |
| [azurerm_storage_account.vmstore](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/storage_account) | resource |
| [azurerm_storage_account_network_rules.storenetwork](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/storage_account_network_rules) | resource |
| [azurerm_subnet.vm-sub](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/subnet) | resource |
| [azurerm_subnet_network_security_group_association.sg-subnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_user_assigned_identity.userad](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/user_assigned_identity) | resource |
| [azurerm_virtual_network.vmnetwork](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/virtual_network) | resource |
| [azurerm_windows_virtual_machine.vm2](https://registry.terraform.io/providers/hashicorp/azurerm/3.75.0/docs/resources/windows_virtual_machine) | resource |
| [random_pet.rg_name](https://registry.terraform.io/providers/hashicorp/random/3.0/docs/resources/pet) | resource |
| [time_sleep.delay](https://registry.terraform.io/providers/hashicorp/time/0.10.0/docs/resources/sleep) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_delaytime"></a> [delaytime](#input\_delaytime) | Time duration to delay resource creation. For example, 30s for 30 seconds or 5m for 5 minutes | `string` | n/a | yes |
| <a name="input_disk-cache"></a> [disk-cache](#input\_disk-cache) | The Type of Caching which should be used for the Internal OS Disk. Possible values are None, ReadOnly and ReadWrite. | `string` | n/a | yes |
| <a name="input_disk-store-acc"></a> [disk-store-acc](#input\_disk-store-acc) | The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard\_LRS, StandardSSD\_LRS, Premium\_LRS, StandardSSD\_ZRS and Premium\_ZRS. Changing this forces a new resource to be created | `string` | n/a | yes |
| <a name="input_linux-image-offer"></a> [linux-image-offer](#input\_linux-image-offer) | Specifies the offer of the image used to create the virtual machines. Changing this forces a new relinux to be created. | `string` | n/a | yes |
| <a name="input_linux-image-publisher"></a> [linux-image-publisher](#input\_linux-image-publisher) | Specifies the publisher of the image used to create the virtual machines. Changing this forces a new relinux to be created. | `string` | n/a | yes |
| <a name="input_linux-image-sku"></a> [linux-image-sku](#input\_linux-image-sku) | Specifies the SKU of the image used to create the virtual machines. Changing this forces a new relinux to be created. | `string` | n/a | yes |
| <a name="input_linux-image-version"></a> [linux-image-version](#input\_linux-image-version) | Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_linux-nic-name"></a> [linux-nic-name](#input\_linux-nic-name) | The name of the Network Interface. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_linux-vm-name"></a> [linux-vm-name](#input\_linux-vm-name) | The name of the Linux Virtual Machine. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_nic-ip-allocation"></a> [nic-ip-allocation](#input\_nic-ip-allocation) | The allocation method used for the Private IP Address. Possible values are Dynamic and Static. | `string` | n/a | yes |
| <a name="input_nic-ip-config-name"></a> [nic-ip-config-name](#input\_nic-ip-config-name) | A name used for this IP Configuration. | `string` | n/a | yes |
| <a name="input_nic-location"></a> [nic-location](#input\_nic-location) | The location where the Network Interface should exist. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_password-auth"></a> [password-auth](#input\_password-auth) | To set is password will be required for the authentication or not | `bool` | `false` | no |
| <a name="input_public_ip_allocation"></a> [public\_ip\_allocation](#input\_public\_ip\_allocation) | Defines the allocation method for this IP address. Possible values are Static or Dynamic. | `string` | n/a | yes |
| <a name="input_public_ip_name"></a> [public\_ip\_name](#input\_public\_ip\_name) | Specifies the name of the Public IP. Changing this forces a new Public IP to be created. | `string` | n/a | yes |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_role-definition"></a> [role-definition](#input\_role-definition) | The name of a built-in Role. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_sg-name"></a> [sg-name](#input\_sg-name) | Specifies the name of the network security group. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_storage-account-name"></a> [storage-account-name](#input\_storage-account-name) | Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group. | `string` | n/a | yes |
| <a name="input_storage-account-tier"></a> [storage-account-tier](#input\_storage-account-tier) | Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_storage-container-access"></a> [storage-container-access](#input\_storage-container-access) | The Access Level configured for this Container. Possible values are blob, container or private. Defaults to private. | `string` | n/a | yes |
| <a name="input_storage-container-name"></a> [storage-container-name](#input\_storage-container-name) | The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_storage-ip-rule"></a> [storage-ip-rule](#input\_storage-ip-rule) | List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. Private IP address ranges (as defined in RFC 1918) are not allowed. | `list(string)` | n/a | yes |
| <a name="input_storage-location"></a> [storage-location](#input\_storage-location) | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_storage-network-action"></a> [storage-network-action](#input\_storage-network-action) | Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow. | `string` | n/a | yes |
| <a name="input_storage-replication"></a> [storage-replication](#input\_storage-replication) | Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. Changing this forces a new resource to be created when types LRS, GRS and RAGRS are changed to ZRS, GZRS or RAGZRS and vice versa. | `string` | n/a | yes |
| <a name="input_subnet-cidr"></a> [subnet-cidr](#input\_subnet-cidr) | The address prefixes to use for the subnet. | `list(string)` | n/a | yes |
| <a name="input_subnet-name"></a> [subnet-name](#input\_subnet-name) | The name of the subnet. Changing this forces a new resource to be created | `string` | n/a | yes |
| <a name="input_subnet-service-endpoint"></a> [subnet-service-endpoint](#input\_subnet-service-endpoint) | The list of Service endpoints to associate with the subnet | `list(string)` | n/a | yes |
| <a name="input_tag"></a> [tag](#input\_tag) | Tags for resources | `map(string)` | n/a | yes |
| <a name="input_user-ad-name"></a> [user-ad-name](#input\_user-ad-name) | Specifies the name of this User Assigned Identity. Changing this forces a new User Assigned Identity to be created. | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_vm-id-type"></a> [vm-id-type](#input\_vm-id-type) | Specifies the type of Managed Service Identity that should be configured on this Linux Virtual Machine. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both). | `string` | n/a | yes |
| <a name="input_vm-size"></a> [vm-size](#input\_vm-size) | The SKU which should be used for this Virtual Machine, such as Standard\_F2. | `string` | n/a | yes |
| <a name="input_vnet-cidr"></a> [vnet-cidr](#input\_vnet-cidr) | The address space that is used the virtual network. You can supply more than one address space. | `list(string)` | n/a | yes |
| <a name="input_vnet-location"></a> [vnet-location](#input\_vnet-location) | The location/region where the virtual network is created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_vnet-name"></a> [vnet-name](#input\_vnet-name) | The name of the virtual network. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_window-image-offer"></a> [window-image-offer](#input\_window-image-offer) | Specifies the offer of the image used to create the virtual machines. Changing this forces a new rewindow to be created. | `string` | n/a | yes |
| <a name="input_window-image-publisher"></a> [window-image-publisher](#input\_window-image-publisher) | Specifies the publisher of the image used to create the virtual machines. Changing this forces a new rewindow to be created. | `string` | n/a | yes |
| <a name="input_window-image-sku"></a> [window-image-sku](#input\_window-image-sku) | Specifies the SKU of the image used to create the virtual machines. Changing this forces a new rewindow to be created. | `string` | n/a | yes |
| <a name="input_window-image-version"></a> [window-image-version](#input\_window-image-version) | Specifies the version of the image used to create the virtual machines. Changing this forces a new rewindow to be created. | `string` | n/a | yes |
| <a name="input_window-nic-name"></a> [window-nic-name](#input\_window-nic-name) | The name of the Network Interface. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_windows-vm-name"></a> [windows-vm-name](#input\_windows-vm-name) | The name of the Windows Virtual Machine. Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public-ip"></a> [public-ip](#output\_public-ip) | Public Ip address |
| <a name="output_rg-name"></a> [rg-name](#output\_rg-name) | The name of the resource group |
| <a name="output_storage-connection"></a> [storage-connection](#output\_storage-connection) | Storage account connection string |
| <a name="output_storage-key"></a> [storage-key](#output\_storage-key) | The storage account primary access key |
| <a name="output_storage-name"></a> [storage-name](#output\_storage-name) | The name of storage account |
| <a name="output_vm-Ip"></a> [vm-Ip](#output\_vm-Ip) | The value of the private Ip address of the linux virtual machine |
| <a name="output_vm-Ip_public"></a> [vm-Ip\_public](#output\_vm-Ip\_public) | The public ip address of the virtual machine |
<!-- END_TF_DOCS -->
