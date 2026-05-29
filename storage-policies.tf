#########################
# STORAGE POLICIES
#########################

data "azurerm_policy_definition" "storage_network" {
  display_name = "Storage accounts should restrict network access"
}

data "azurerm_policy_definition" "storage_shared_key" {
  display_name = "Storage accounts should prevent shared key access"
}

data "azurerm_policy_definition" "storage_public_access" {
  display_name = "Storage account public access should be disallowed"
}

data "azurerm_policy_definition" "storage_tls" {
  display_name = "Storage accounts should have the specified minimum TLS version"
}

data "azurerm_policy_definition" "storage_secure_transfer" {
  display_name = "Secure transfer to storage accounts should be enabled"
}
