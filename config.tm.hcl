globals "terraform" "backend" "azurerm" {
  resource_group_name  = "tfstate"
  storage_account_name = "tfstatexscz2"
  container_name       = "tfstate"
}