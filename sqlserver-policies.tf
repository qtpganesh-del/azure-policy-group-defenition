data "azurerm_policy_definition" "sql_vulnerability" {
  display_name = "SQL databases should have vulnerability findings resolved"
}

data "azurerm_policy_definition" "sql_aad_admin" {
  display_name = "An Azure Active Directory administrator should be provisioned for SQL servers"
}

data "azurerm_policy_definition" "sql_tde" {
  display_name = "Transparent Data Encryption on SQL databases should be enabled"
}

data "azurerm_policy_definition" "sql_defender" {
  display_name = "Azure Defender for SQL should be enabled for unprotected Azure SQL servers"
}