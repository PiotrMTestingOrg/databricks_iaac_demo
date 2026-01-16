variable "databricks_workspace_url" {
  description = "Azure Databricks workspace URL"
  type        = string
  default     = "https://adb-3470554519284523.3.azuredatabricks.net"
}

variable "storage_account_name" {
  description = "Azure Data Lake Storage account name"
  type        = string
  default     = "sadbxtest"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-databricks"
}

variable "databricks_workspace_name" {
  description = "Databricks workspace name"
  type        = string
  default     = "dbxpmtest"
}


variable "connector_name" {
  description = "Databricks connector name"
  type        = string
  default     = "acc_conn"
}

variable "project" {
  description = "Project name used to prefix catalog, storage credential, and external location"
  type        = string
  default     = "demo"
}