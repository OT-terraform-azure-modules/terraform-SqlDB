resource "azurerm_sql_database" "TerraformSqlDb" {
  name                = var.sqlDb_Name
  resource_group_name = var.sqlDb_RG_Name
  location            = var.sqlDb_Location
  server_name         = var.sqlDb_Server_Name
  tags                = var.sqlDb_Tag

}