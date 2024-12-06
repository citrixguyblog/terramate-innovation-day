generate_hcl "_backend.tf" {
  content {
    terraform {
      backend "azurerm" {
        resource_group_name  = global.backend.resource_group_name
        storage_account_name = global.backend.storage_account_name
        container_name      = global.backend.container_name
        key                = "${terramate.stack.path}/terraform.tfstate"
      }
    }
  }
}