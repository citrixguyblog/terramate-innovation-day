terraform {
  required_version = ">= 1.9"

  backend "azurerm" {
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.deployment_subscription_id
  features {}
}
