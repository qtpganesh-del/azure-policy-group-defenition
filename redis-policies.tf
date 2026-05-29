data "azurerm_policy_definition" "redis_private_link" {
  display_name = "Azure Cache for Redis should use private link"
}