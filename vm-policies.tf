#########################
# VM POLICIES
#########################

data "azurerm_policy_definition" "vm_mgmt_ports" {
  display_name = "Management ports should be closed on your virtual machines"
}

data "azurerm_policy_definition" "vm_backup" {
  display_name = "Azure Backup should be enabled for Virtual Machines"
}

data "azurerm_policy_definition" "vm_vuln" {
  display_name = "A vulnerability assessment solution should be enabled on your virtual machines"
}

data "azurerm_policy_definition" "vm_nsg_internal" {
  display_name = "Non-internet-facing virtual machines should be protected with network security groups"
}

data "azurerm_policy_definition" "vm_nsg_external" {
  display_name = "Internet-facing virtual machines should be protected with network security groups"
}

data "azurerm_policy_definition" "vm_windows_agent" {
  display_name = "[Preview]: Network traffic data collection agent should be installed on Windows virtual machines"
}

data "azurerm_policy_definition" "vm_linux_agent" {
  display_name = "[Preview]: Network traffic data collection agent should be installed on Linux virtual machines"
}

data "azurerm_policy_definition" "vm_updates" {
  display_name = "Machines should be configured to periodically check for missing system updates"
}

data "azurerm_policy_definition" "vm_encrypt_host" {
  display_name = "Virtual machines and virtual machine scale sets should have encryption at host enabled"
}

data "azurerm_policy_definition" "vm_arm" {
  display_name = "Virtual machines should be migrated to new Azure Resource Manager resources"
}

