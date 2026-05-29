data "azurerm_policy_definition" "cognitive_identity" {
  display_name = "Cognitive Services accounts should use a managed identity"
}

data "azurerm_policy_definition" "cognitive_public_access" {
  display_name = "Configure Cognitive Services accounts to disable public network access"
}