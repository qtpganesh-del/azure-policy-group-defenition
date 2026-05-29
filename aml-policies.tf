data "azurerm_policy_definition" "aml_public_access" {
  display_name = "Azure Machine Learning Workspaces should disable public network access"
}

data "azurerm_policy_definition" "aml_logs" {
  display_name = "Resource logs in Azure Machine Learning Workspaces should be enabled"
}