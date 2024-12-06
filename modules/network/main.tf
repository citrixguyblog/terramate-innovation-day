module "azure_region" {
  source = "claranet/regions/azurerm"

  azure_region = var.azure_region
}

module "rg" {
  source = "claranet/rg/azurerm"

  location       = module.azure_region.location
  location_short = module.azure_region.location_short
  client_name    = var.client_name
  environment    = var.environment
  stack          = var.stack
}

module "azure_virtual_network" {
  source = "claranet/vnet/azurerm"

  environment    = var.environment
  location       = module.azure_region.location
  location_short = module.azure_region.location_short
  client_name    = var.client_name
  stack          = var.stack

  resource_group_name = module.rg.name

  cidrs = var.cidrs
}
