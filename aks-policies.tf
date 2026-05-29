data "azurerm_policy_definition" "aks_local_auth" {
  display_name = "Azure Kubernetes Service Clusters should have local authentication methods disabled"
}

data "azurerm_policy_definition" "aks_allowed_images" {
  display_name = "Kubernetes cluster containers should only use allowed images"
}

data "azurerm_policy_definition" "aks_apparmor" {
  display_name = "Kubernetes cluster containers should only use allowed AppArmor profiles"
}

data "azurerm_policy_definition" "aks_defender" {
  display_name = "Azure Kubernetes Service clusters should have Defender profile enabled"
}

data "azurerm_policy_definition" "aks_policy_addon" {
  display_name = "Azure Policy Add-on for Kubernetes service (AKS) should be installed and enabled on your clusters"
}

data "azurerm_policy_definition" "aks_vulnerability" {
  display_name = "Azure running container images should have vulnerabilities resolved (powered by Microsoft Defender Vulnerability Management)"
}