variable "sg-name" {
  type        = string
  description = "Specifies the name of the network security group. Changing this forces a new resource to be created."
}

variable "tag" {
  type        = map(string)
  description = "Tags for security group resource"
}

variable "sg-rg-name" {
  type        = string
  description = "The name of the resource group in which to create the network security group. Changing this forces a new resource to be created."
}

variable "sg-location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}