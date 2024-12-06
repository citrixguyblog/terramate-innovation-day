generate_hcl "_backend.tf" {
  content {
    terraform {
      backend "azurerm" {
        storage_account_name = "stterramatewedev001"
        resource_group_name  = "rg-terramate-we-test-001"
        container_name       = "terramate-dev"
        location             = "westeurope"
        subscription_id      = "70f0d042-bb3d-490b-8498-964903cd415a"
      }
    }
  }
}