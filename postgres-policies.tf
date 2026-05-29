data "azurerm_policy_definition" "postgres_entra" {
  display_name = "[Preview]: Azure PostgreSQL flexible server should have Microsoft Entra Only Authentication enabled"
}

data "azurerm_policy_definition" "postgres_ssl" {
  display_name = "Enforce SSL connection should be enabled for PostgreSQL flexible servers"
}