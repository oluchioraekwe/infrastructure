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

variable "nic-name" {
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

variable "linux-vm-size" {
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
  type    = bool
  default = false
}

variable "disk-cache" {
  type        = string
  description = "The Type of Caching which should be used for the Internal OS Disk. Possible values are None, ReadOnly and ReadWrite."
}

variable "disk-store-acc" {
  type        = string
  description = "The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS, Premium_LRS, StandardSSD_ZRS and Premium_ZRS. Changing this forces a new resource to be created"
}

variable "source-image-publisher" {
  type        = string
  description = "Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created."
}

variable "source-image-offer" {
  type        = string
  description = "Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created."
}

variable "source-image-sku" {
  type        = string
  description = "Specifies the SKU of the image used to create the virtual machines. Changing this forces a new resource to be created."
}

variable "source-image-version" {
  type        = string
  description = "Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created."
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