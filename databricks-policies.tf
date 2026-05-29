data "azurerm_policy_definition" "db_public_ip" {
  display_name = "Azure Databricks Clusters should disable public IP"
}

data "azurerm_policy_definition" "db_public_network" {
  display_name = "Azure Databricks Workspaces should disable public network access"
}

data "azurerm_policy_definition" "db_vnet" {
  display_name = "Azure Databricks Workspaces should be in a virtual network"
}

data "azurerm_policy_definition" "db_logs" {
  display_name = "Resource logs in Azure Databricks Workspaces should be enabled"
}