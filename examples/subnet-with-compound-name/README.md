# Example: Subnet with Compound Name
This module manages an Azure Virtual Network subnet using the [azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest) Terraform provider. This examples shows how to use the module to manage a subnet with a compound name which appends the service/component abbreviation before the subnet name.

## Example Usage

```hcl
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
```

You are specifying three values:

- **srv_comp_abbr**: The abbreviation for the service/component the subnet supports.
- **resource_group_name**: The name of the Resource Group in which the subnet will be created.
- **virtual_network_name**: The name of the Azure Virtual Network where the subnet will be hosted.
- **subnet_cidr_list**: The list of CIDR blocks for the subnet.

This will result in an Azure Virtual Network subnet named: `INF_LaunchPad`.