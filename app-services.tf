#########################
# APP SERVICE POLICIES
#########################

data "azurerm_policy_definition" "app_https" {
  display_name = "App Service apps should only be accessible over HTTPS"
}

data "azurerm_policy_definition" "app_client_cert" {
  display_name = "App Service apps should have Client Certificates (Incoming client certificates) enabled"
}

data "azurerm_policy_definition" "app_managed_identity" {
  display_name = "App Service apps should use managed identity"
}

data "azurerm_policy_definition" "app_tls" {
  display_name = "App Service apps should use the latest TLS version"
}

data "azurerm_policy_definition" "app_cors" {
  display_name = "App Service apps should not have CORS configured to allow every resource to access your apps"
}

data "azurerm_policy_definition" "app_ftps" {
  display_name = "App Service apps should require FTPS only"
}

data "azurerm_policy_definition" "app_remote_debug" {
  display_name = "App Service apps should have remote debugging turned off"
}