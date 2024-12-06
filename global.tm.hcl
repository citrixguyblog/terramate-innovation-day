#globals "backend" {
#  storage_account_name = "test"
#  resource_group_name  = "test"
#  container_name       = "test"
#  location             = "test"
#  subscription_id      = "test"
#}




# globals {
#   // Environment-specific configurations
#   environment = terramate.config.run.env.environment
#   sa_config = {
#     dev = {
#       storage_account_name = "stterramatewedev001"
#       resource_group_name  = "rg-terramate-we-test-001"
#       container_name       = "terramate-dev"
#       location             = "westeurope"
#       subscription_id      = "70f0d042-bb3d-490b-8498-964903cd415a"
#     }
#     prod = {
#       storage_account_name = "stterramateweprod001"
#       resource_group_name  = "rg-terramate-we-test-001"
#       container_name       = "terramate-prod"
#       location             = "westeurope"
#       subscription_id      = "70f0d042-bb3d-490b-8498-964903cd415a"
#     }
#   }
# }

