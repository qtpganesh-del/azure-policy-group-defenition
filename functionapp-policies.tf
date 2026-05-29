#########################
# FUNCTION APP POLICIES
#########################

data "azurerm_policy_definition" "func_https" {
  display_name = "Function apps should only be accessible over HTTPS"
}

data "azurerm_policy_definition" "func_managed_identity" {
  display_name = "Function apps should use managed identity"
}

data "azurerm_policy_definition" "func_cors" {
  display_name = "Function apps should not have CORS configured to allow every resource to access your apps"
}

data "azurerm_policy_definition" "func_remote_debug" {
  display_name = "Function apps should have remote debugging turned off"
}

data "azurerm_policy_definition" "func_client_cert" {
  display_name = "Function apps should have Client Certificates (Incoming client certificates) enabled"
}

data "azurerm_policy_definition" "func_ftps" {
  display_name = "Function apps should require FTPS only"
}

data "azurerm_policy_definition" "func_tls" {
  display_name = "Function apps should use the latest TLS version"
}