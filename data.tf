# Data sources for existing resources
data "azurerm_databricks_workspace" "existing" {
  name                = var.databricks_workspace_name
  resource_group_name = var.resource_group_name
}

data "azurerm_storage_account" "adls" {
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name
}

data "azurerm_databricks_access_connector" "connector" {
  name = var.connector_name
  resource_group_name = var.resource_group_name
}