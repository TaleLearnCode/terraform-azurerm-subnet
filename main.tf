# #############################################################################
# Terraform Module: Azure Resource Group
# #############################################################################

resource "azurerm_subnet" "subnet" {
  name                 = var.srv_comp_abbr != null ? "${upper(var.srv_comp_abbr)}_${var.subnet_name}" : var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.subnet_cidr_list
}