# External location pointing to ADLS container
resource "databricks_external_location" "adls" {
  name            = "${var.project}_adls_external_location"
  url             = "abfss://data@${data.azurerm_storage_account.adls.name}.dfs.core.windows.net/${var.project}/"
  credential_name = "${var.project}_adls_credential"
  comment         = "External location for Azure Data Lake - ${var.project} project"
}

# Unity Catalog
resource "databricks_catalog" "demo" {
  name           = "${var.project}_catalog"
  comment        = "Catalog for data lakehouse - ${var.project} project"
  storage_root   = databricks_external_location.adls.url
  isolation_mode = "OPEN"
}

# Schemas from locals map
resource "databricks_schema" "layers" {
  for_each     = local.schemas
  catalog_name = databricks_catalog.demo.name
  name         = each.key
  comment      = each.value.comment

  properties = {
    layer = each.key
  }
}
