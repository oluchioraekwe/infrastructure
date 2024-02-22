variable "rg_name" {
  type        = string
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

variable "rg_location" {
  type        = string
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created"
}

variable "vnet-name" {
  type        = string
  description = "The name of the virtual network. Changing this forces a new resource to be created. "
}

variable "vnet-cidr" {
  type        = list(string)
  description = "The address space that is used the virtual network. You can supply more than one address space."
}

variable "vnet-location" {
  type        = string
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
}

variable "subnet-name" {
  type        = string
  description = "The name of the subnet. Changing this forces a new resource to be created"
}

variable "subnet-cidr" {
  type        = list(string)
  description = "The address prefixes to use for the subnet."
}

variable "tag" {
  type        = map(string)
  description = "Tags for resources"
}

variable "linux-nic-name" {
  type        = string
  description = "The name of the Network Interface. Changing this forces a new resource to be created."
}
variable "window-nic-name" {
  type        = string
  description = "The name of the Network Interface. Changing this forces a new resource to be created."
}

variable "nic-ip-config-name" {
  type        = string
  description = "A name used for this IP Configuration."
}

variable "nic-ip-allocation" {
  type        = string
  description = "The allocation method used for the Private IP Address. Possible values are Dynamic and Static."
}

variable "nic-location" {
  type        = string
  description = "The location where the Network Interface should exist. Changing this forces a new resource to be created."
}

variable "linux-vm-name" {
  type        = string
  description = "The name of the Linux Virtual Machine. Changing this forces a new resource to be created."
}

variable "windows-vm-name" {
  type        = string
  description = "The name of the Windows Virtual Machine. Changing this forces a new resource to be created."
}

variable "vm-size" {
  type        = string
  description = "The SKU which should be used for this Virtual Machine, such as Standard_F2."
}

variable "username" {
  type        = string
  description = "The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
}

variable "password" {
  type        = string
  description = "The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created."
}

variable "password-auth" {
  type        = bool
  description = "To set is password will be required for the authentication or not"
  default     = false
}

variable "disk-cache" {
  type        = string
  description = "The Type of Caching which should be used for the Internal OS Disk. Possible values are None, ReadOnly and ReadWrite."
}

variable "disk-store-acc" {
  type        = string
  description = "The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS, Premium_LRS, StandardSSD_ZRS and Premium_ZRS. Changing this forces a new resource to be created"
}

variable "linux-image-publisher" {
  type        = string
  description = "Specifies the publisher of the image used to create the virtual machines. Changing this forces a new relinux to be created."
}

variable "linux-image-offer" {
  type        = string
  description = "Specifies the offer of the image used to create the virtual machines. Changing this forces a new relinux to be created."
}

variable "linux-image-sku" {
  type        = string
  description = "Specifies the SKU of the image used to create the virtual machines. Changing this forces a new relinux to be created."
}

variable "linux-image-version" {
  type        = string
  description = "Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created."
}

variable "window-image-publisher" {
  type        = string
  description = "Specifies the publisher of the image used to create the virtual machines. Changing this forces a new rewindow to be created."
}

variable "window-image-offer" {
  type        = string
  description = "Specifies the offer of the image used to create the virtual machines. Changing this forces a new rewindow to be created."
}

variable "window-image-sku" {
  type        = string
  description = "Specifies the SKU of the image used to create the virtual machines. Changing this forces a new rewindow to be created."
}

variable "window-image-version" {
  type        = string
  description = "Specifies the version of the image used to create the virtual machines. Changing this forces a new rewindow to be created."
}




# variable "client_id" {
#   type        = string
#   description = "The Client ID for the Azure Subscription"
# }

# variable "tenant_id" {
#   type        = string
#   description = "The Tennant ID for the Azure Subscription"
# }

# variable "sub_id" {
#   type        = string
#   description = "The Subscription ID for the Azure Account"
# }

variable "public_ip_name" {
  type        = string
  description = "Specifies the name of the Public IP. Changing this forces a new Public IP to be created."
}

variable "public_ip_allocation" {
  type        = string
  description = " Defines the allocation method for this IP address. Possible values are Static or Dynamic."
}

variable "sg-name" {
  type        = string
  description = "Specifies the name of the network security group. Changing this forces a new resource to be created."
}

variable "storage-location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "storage-account-tier" {
  type        = string
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
}

variable "storage-replication" {
  type        = string
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. Changing this forces a new resource to be created when types LRS, GRS and RAGRS are changed to ZRS, GZRS or RAGZRS and vice versa."
}

variable "storage-container-name" {
  type        = string
  description = "The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created."
}

variable "storage-container-access" {
  type        = string
  description = "The Access Level configured for this Container. Possible values are blob, container or private. Defaults to private."
}

variable "storage-account-name" {
  type        = string
  description = "Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."
}

variable "user-ad-name" {
  type        = string
  description = "Specifies the name of this User Assigned Identity. Changing this forces a new User Assigned Identity to be created."
}

variable "role-definition" {
  type        = string
  description = "The name of a built-in Role. Changing this forces a new resource to be created."
}

variable "vm-id-type" {
  type        = string
  description = "Specifies the type of Managed Service Identity that should be configured on this Linux Virtual Machine. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both)."
}

variable "subnet-service-endpoint" {
  type        = list(string)
  description = "The list of Service endpoints to associate with the subnet"
}

variable "storage-network-action" {
  type        = string
  description = "Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow."
}

variable "storage-ip-rule" {
  type        = list(string)
  description = " List of public IP or IP ranges in CIDR Format. Only IPv4 addresses are allowed. Private IP address ranges (as defined in RFC 1918) are not allowed."
}

variable "delaytime" {
  type        = string
  description = " Time duration to delay resource creation. For example, 30s for 30 seconds or 5m for 5 minutes"
}