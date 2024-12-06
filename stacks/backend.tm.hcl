generate_hcl "_terramate_generated_backend.tf" {
  content {
    terraform {
      backend "azurerm" {
        subscription_id = global.subscription_id
        resource_group_name = global.resource_group_name
        storage_account_name = global.storage_account_name
        container_name = global.container_name
        key = "${terramate.stack.name}_${global.environment}"
      }
    }
  }
}

generate_hcl "_terramate_generated_main.tf" {
  content {
    terraform {
      backend "azurerm" {
        subscription_id = global.subscription_id
        resource_group_name = global.resource_group_name
        storage_account_name = global.storage_account_name
        container_name = global.container_name
        key = "${terramate.stack.name}_${global.environment}"
      }
    }
  }
}