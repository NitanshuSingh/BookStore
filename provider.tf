terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "dev-rg"
    storage_account_name = "shrustrg"
    container_name = "devblob"
    key = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "9eb6dd3b-7d3d-4d3a-82fa-3747ca6f588e"
}