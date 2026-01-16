terraform {
  required_version = ">= 1.12.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.42.0"
    }
    databricks = {
      source  = "databricks/databricks"
      version = "1.88.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "3.4.0"
    }
  }
  backend "azurerm" {
    subscription_id      = "355f69b4-9fad-45c6-b881-2e7a4d376b18"
    resource_group_name  = "rg-databricks"
    storage_account_name = "sadbxtest"
    container_name       = "platform-state"
    key                  = "platform-state.tfstate"
  }
}
