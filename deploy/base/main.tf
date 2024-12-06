resource "random_string" "this" {
  length    = 4
  lower     = true
  min_lower = 4
  special   = false
}

module "azure_region" {
  source = "claranet/regions/azurerm"

  azure_region = var.azure_region
}

module "rg" {
  source = "claranet/rg/azurerm"

  client_name    = var.client_name
  environment    = var.environment
  location       = module.azure_region.location
  location_short = module.azure_region.location_short
  stack          = var.stack
}

module "log_analytics" {
  source = "github.com/equinor/terraform-azurerm-log-analytics"

  workspace_name      = "log-${var.stack}-${var.client_name}-${module.azure_region.location_short}-${var.environment}"
  resource_group_name = module.rg.name
  location            = module.azure_region.location
  retention_in_days   = var.retention_in_days
}

module "key_vault" {
  source = "claranet/keyvault/azurerm"

  client_name         = var.client_name
  environment         = var.environment
  location            = module.azure_region.location
  location_short      = module.azure_region.location_short
  resource_group_name = module.rg.name
  stack               = var.stack

  logs_destinations_ids = [module.log_analytics.workspace_id]
}
