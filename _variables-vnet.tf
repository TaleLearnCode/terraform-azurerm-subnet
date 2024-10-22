# #############################################################################
# Virtual Network Variables
# #############################################################################

variable "virtual_network_name" {
  type        = string
  description = "The name of the virtual network to use."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for the virtual network to use."
}

variable "subnet_cidr_list" {
  type        = list(string)
  description = "The list of CIDR blocks for the subnet."
}