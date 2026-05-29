#########################
# KEY VAULT POLICIES
#########################

data "azurerm_policy_definition" "kv_secret_expiry" {
  display_name = "Key Vault secrets should have an expiration date"
}

data "azurerm_policy_definition" "kv_defender" {
  display_name = "Azure Defender for Key Vault should be enabled"
}

data "azurerm_policy_definition" "kv_firewall" {
  display_name = "Azure Key Vault should have firewall enabled or public network access disabled"
}

data "azurerm_policy_definition" "kv_delete_protection" {
  display_name = "Key vaults should have deletion protection enabled"
}

data "azurerm_policy_definition" "kv_soft_delete" {
  display_name = "Key vaults should have soft delete enabled"
}

data "azurerm_policy_definition" "kv_rotation" {
  display_name = "Keys should have a rotation policy ensuring that their rotation is scheduled within the specified number of days after creation."
}

data "azurerm_policy_definition" "kv_key_expiry" {
  display_name = "Key Vault keys should have an expiration date"
}