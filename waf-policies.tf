data "azurerm_policy_definition" "waf_enabled" {
  display_name = "Web Application Firewall (WAF) should be enabled for Application Gateway"
}