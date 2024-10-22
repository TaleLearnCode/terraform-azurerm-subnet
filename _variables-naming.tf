# #############################################################################
# Variables: Naming
# #############################################################################

variable "srv_comp_abbr" {
  type        = string
  description = "The abbreviation of the service component for which the resources are being created."
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet to be created without the service/component prefix."
}