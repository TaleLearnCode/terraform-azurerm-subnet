module "subnet" {
  source  = "TaleLearnCode/subnet/azurerm"
  version = "0.0.1-pre"
  providers = {
    azurerm = azurerm
  }

  srv_comp_abbr        = "inf"
  subnet_name          = "LaunchPad"
  resource_group_name  = "rg-existing"
  virtual_network_name = "vnet-existing"
  subnet_cidr_list     = ["10.13.1.0/24"]
}