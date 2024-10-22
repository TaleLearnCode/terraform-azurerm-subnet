# #############################################################################
# Outputs
# #############################################################################

output "subnet" {
  value = azurerm_subnet.subnet
  description = "The managed Azure Virtual Network Subnet."
}