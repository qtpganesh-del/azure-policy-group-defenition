data "azurerm_policy_definition" "mysql_entra" {
  display_name = "Azure MySQL flexible server should have Microsoft Entra Only Authentication enabled"
}

data "azurerm_policy_definition" "mysql_public_access" {
  display_name = "Public network access should be disabled for MySQL flexible servers"
}

data "azurerm_policy_definition" "mysql_defender" {
  display_name = "Azure Defender for SQL should be enabled for unprotected MySQL flexible servers"
}