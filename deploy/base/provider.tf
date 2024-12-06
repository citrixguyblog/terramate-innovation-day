terraform {
  required_version = ">= 1.7.4"

  #  backend "azurerm" {
  #  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
}

provider "azurerm" {
  subscription_id = var.deployment_subscription_id
  features {}
}

provider "random" {
}
