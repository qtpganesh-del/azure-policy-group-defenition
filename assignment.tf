resource "azurerm_subscription_policy_assignment" "baseline" {

  name                 = "azure-security-baseline"
  subscription_id      = "/subscriptions/${var.subscription_id}"

  policy_definition_id = azurerm_policy_set_definition.security_baseline.id

  display_name = "azure-security-baseline"
  location     = "Central India"
  
  identity {
    type = "SystemAssigned"
  }
}