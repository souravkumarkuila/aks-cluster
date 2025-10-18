terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "70d13209-b5da-483b-9f07-a91b9e1a684b"
  features {}
}