resource "azurerm_policy_set_definition" "security_baseline" {

  name         = "azure-security-baseline"
  policy_type  = "Custom"
  display_name = "azure-security-baseline"

  #################################################
  # GROUPS
  #################################################

  policy_definition_group {
    name         = "virtual-machine"
    display_name = "Virtual Machine"
    category     = "Virtual Machine"
  }

  policy_definition_group {
    name         = "storage-account"
    display_name = "Storage Account"
    category     = "Storage Account"
  }

  policy_definition_group {
  name         = "key-vault"
  display_name = "Key Vault"
  category     = "Key Vault"
  }

  policy_definition_group {
  name         = "app-service"
  display_name = "App Service"
  category     = "App Service"
  }

  policy_definition_group {
  name         = "function-app"
  display_name = "Function App"
  category     = "Function App"
  }

  policy_definition_group {
  name         = "sql-server"
  display_name = "SQL Server"
  category     = "SQL Server"
  }

  policy_definition_group {
  name         = "aks"
  display_name = "Azure Kubernetes Service"
  category     = "AKS"
  }

  policy_definition_group {
  name         = "databricks"
  display_name = "Databricks"
  category     = "Databricks"
  }

  policy_definition_group {
  name         = "cognitive-services"
  display_name = "Cognitive Services"
  category     = "Cognitive Services"
  }

  policy_definition_group {
  name         = "azure-ai-search"
  display_name = "Azure AI Search"
  category     = "Azure AI Search"
  }

  policy_definition_group {
  name         = "azure-ml"
  display_name = "Azure Machine Learning"
  category     = "Azure ML"
  }

  policy_definition_group {
  name         = "mysql-flexible"
  display_name = "MySQL Flexible"
  category     = "MySQL"
  }

  policy_definition_group {
  name         = "postgres-flexible"
  display_name = "PostgreSQL Flexible"
  category     = "PostgreSQL"
  }

  policy_definition_group {
  name         = "mariadb"
  display_name = "MariaDB"
  category     = "MariaDB"
  }

  policy_definition_group {
  name         = "redis"
  display_name = "Redis"
  category     = "Redis"
  }

  policy_definition_group {
  name         = "waf"
  display_name = "Web Application Firewall"
  category     = "WAF"
  }

  #################################################
  # STORAGE POLICIES
  #################################################

  policy_definition_reference {

    policy_definition_id = data.azurerm_policy_definition.storage_network.id
    reference_id         = "storage_network"

    policy_group_names = [
      "storage-account"
    ]
  }

  policy_definition_reference {

    policy_definition_id = data.azurerm_policy_definition.storage_shared_key.id
    reference_id         = "storage_shared"

    policy_group_names = [
      "storage-account"
    ]
  }

  policy_definition_reference {

    policy_definition_id = data.azurerm_policy_definition.storage_public_access.id
    reference_id         = "storage_public"

    policy_group_names = [
      "storage-account"
    ]
  }

  policy_definition_reference {

    policy_definition_id = data.azurerm_policy_definition.storage_tls.id
    reference_id         = "storage_tls"

    policy_group_names = [
      "storage-account"
    ]
  }

  policy_definition_reference {

    policy_definition_id = data.azurerm_policy_definition.storage_secure_transfer.id
    reference_id         = "storage_transfer"

    policy_group_names = [
      "storage-account"
    ]
  }


  #################################################
  # VM POLICIES
  #################################################

  policy_definition_reference {

    policy_definition_id = data.azurerm_policy_definition.vm_mgmt_ports.id
    reference_id         = "vm_ports"

    policy_group_names = [
      "virtual-machine"
    ]
  }

  policy_definition_reference {

    policy_definition_id = data.azurerm_policy_definition.vm_backup.id
    reference_id         = "vm_backup"

    policy_group_names = [
      "virtual-machine"
    ]
  }

  policy_definition_reference {

    policy_definition_id = data.azurerm_policy_definition.vm_encrypt_host.id
    reference_id         = "vm_encrypt"

    policy_group_names = [
      "virtual-machine"
    ]
  }

  policy_definition_reference {

    policy_definition_id = data.azurerm_policy_definition.vm_linux_agent.id
    reference_id         = "vm_linux_agent"

    policy_group_names = [
      "virtual-machine"
    ]
  }

  policy_definition_reference {

    policy_definition_id = data.azurerm_policy_definition.vm_nsg_external.id
    reference_id         = "vm_nsg_ext"

    policy_group_names = [
      "virtual-machine"
    ]
  }

  policy_definition_reference {

    policy_definition_id = data.azurerm_policy_definition.vm_nsg_internal.id
    reference_id         = "vm_nsg_int"

    policy_group_names = [
      "virtual-machine"
    ]
  }

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.vm_vuln.id
  reference_id         = "vm_vuln"

  policy_group_names = [
    "virtual-machine"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.vm_windows_agent.id
  reference_id         = "vm_win_agent"

  policy_group_names = [
    "virtual-machine"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.vm_updates.id
  reference_id         = "vm_updates"

  policy_group_names = [
    "virtual-machine"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.vm_arm.id
  reference_id         = "vm_arm"

  policy_group_names = [
    "virtual-machine"
  ]
}

#################################################
# KEY VAULT
#################################################

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.kv_secret_expiry.id
  reference_id         = "kv_secret_expiry"

  policy_group_names = [
    "key-vault"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.kv_defender.id
  reference_id         = "kv_defender"

  policy_group_names = [
    "key-vault"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.kv_firewall.id
  reference_id         = "kv_firewall"

  policy_group_names = [
    "key-vault"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.kv_delete_protection.id
  reference_id         = "kv_delete"

  policy_group_names = [
    "key-vault"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.kv_soft_delete.id
  reference_id         = "kv_soft_delete"

  policy_group_names = [
    "key-vault"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.kv_rotation.id
  reference_id         = "kv_rotation"

  policy_group_names = [
    "key-vault"
  ]

  parameter_values = jsonencode({
    maximumDaysToRotate = {
      value = 90
    }
  })
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.kv_key_expiry.id
  reference_id         = "kv_key_expiry"

  policy_group_names = [
    "key-vault"
  ]
}

#################################################
# APP SERVICE
#################################################

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.app_https.id
  reference_id         = "app_https"

  policy_group_names = [
    "app-service"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.app_client_cert.id
  reference_id         = "app_client_cert"

  policy_group_names = [
    "app-service"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.app_managed_identity.id
  reference_id         = "app_managed_identity"

  policy_group_names = [
    "app-service"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.app_tls.id
  reference_id         = "app_tls"

  policy_group_names = [
    "app-service"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.app_cors.id
  reference_id         = "app_cors"

  policy_group_names = [
    "app-service"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.app_ftps.id
  reference_id         = "app_ftps"

  policy_group_names = [
    "app-service"
  ]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.app_remote_debug.id
  reference_id         = "app_remote_debug"

  policy_group_names = [
    "app-service"
  ]
}

#########################
# FUNCTION APP 
#########################

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.func_https.id
  reference_id         = "func_https"

  policy_group_names = ["function-app"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.func_managed_identity.id
  reference_id         = "func_managed_identity"

  policy_group_names = ["function-app"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.func_cors.id
  reference_id         = "func_cors"

  policy_group_names = ["function-app"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.func_remote_debug.id
  reference_id         = "func_remote_debug"

  policy_group_names = ["function-app"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.func_client_cert.id
  reference_id         = "func_client_cert"

  policy_group_names = ["function-app"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.func_ftps.id
  reference_id         = "func_ftps"

  policy_group_names = ["function-app"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.func_tls.id
  reference_id         = "func_tls"

  policy_group_names = ["function-app"]
}

##########################
# SQL SERVER
##########################

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.sql_vulnerability.id
  reference_id         = "sql_vulnerability"
  policy_group_names   = ["sql-server"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.sql_aad_admin.id
  reference_id         = "sql_aad_admin"
  policy_group_names   = ["sql-server"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.sql_tde.id
  reference_id         = "sql_tde"
  policy_group_names   = ["sql-server"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.sql_defender.id
  reference_id         = "sql_defender"
  policy_group_names   = ["sql-server"]
}

########################
# AKS
########################

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.aks_local_auth.id
  reference_id         = "aks_local_auth"
  policy_group_names   = ["aks"]
}

policy_definition_reference {

  policy_definition_id = data.azurerm_policy_definition.aks_allowed_images.id
  reference_id         = "aks_allowed_images"

  policy_group_names = ["aks"]

  parameter_values = jsonencode({
    allowedContainerImagesRegex = {
      value = "^(myacr.azurecr.io|mcr.microsoft.com)/.*"
    }

    effect = {
      value = "Audit"
    }
  })
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.aks_apparmor.id
  reference_id         = "aks_apparmor"
  policy_group_names   = ["aks"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.aks_defender.id
  reference_id         = "aks_defender"
  policy_group_names   = ["aks"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.aks_policy_addon.id
  reference_id         = "aks_policy_addon"
  policy_group_names   = ["aks"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.aks_vulnerability.id
  reference_id         = "aks_vulnerability"
  policy_group_names   = ["aks"]
}

#######################
# Databricks
#######################

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.db_public_ip.id
  reference_id         = "db_public_ip"
  policy_group_names   = ["databricks"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.db_public_network.id
  reference_id         = "db_public_network"
  policy_group_names   = ["databricks"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.db_vnet.id
  reference_id         = "db_vnet"
  policy_group_names   = ["databricks"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.db_logs.id
  reference_id         = "db_logs"
  policy_group_names   = ["databricks"]
}

########################
# Cognitive Services
########################

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.cognitive_identity.id
  reference_id         = "cognitive_identity"
  policy_group_names   = ["cognitive-services"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.cognitive_public_access.id
  reference_id         = "cognitive_public_access"
  policy_group_names   = ["cognitive-services"]
}

#########################
# Azure AI Serarch
#########################

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.search_local_auth.id
  reference_id         = "search_local_auth"
  policy_group_names   = ["azure-ai-search"]
}

#########################
# Azure ML
#########################

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.aml_public_access.id
  reference_id         = "aml_public_access"
  policy_group_names   = ["azure-ml"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.aml_logs.id
  reference_id         = "aml_logs"
  policy_group_names   = ["azure-ml"]
}

#########################
# My-SQL Flexible
#########################

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.mysql_entra.id
  reference_id         = "mysql_entra"
  policy_group_names   = ["mysql-flexible"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.mysql_public_access.id
  reference_id         = "mysql_public_access"
  policy_group_names   = ["mysql-flexible"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.mysql_defender.id
  reference_id         = "mysql_defender"
  policy_group_names   = ["mysql-flexible"]
}

########################
# PostgreSQL Flexible
########################

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.postgres_entra.id
  reference_id         = "postgres_entra"
  policy_group_names   = ["postgres-flexible"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.postgres_ssl.id
  reference_id         = "postgres_ssl"
  policy_group_names   = ["postgres-flexible"]
}

#######################
# MariaDB
#######################

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.mariadb_public_access.id
  reference_id         = "mariadb_public_access"
  policy_group_names   = ["mariadb"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.mariadb_private_endpoint.id
  reference_id         = "mariadb_private_endpoint"
  policy_group_names   = ["mariadb"]
}

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.mariadb_backup.id
  reference_id         = "mariadb_backup"
  policy_group_names   = ["mariadb"]
}

########################
# Reddis
########################

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.redis_private_link.id
  reference_id         = "redis_private_link"
  policy_group_names   = ["redis"]
}

#########################
# WAF
#########################

policy_definition_reference {
  policy_definition_id = data.azurerm_policy_definition.waf_enabled.id
  reference_id         = "waf_enabled"
  policy_group_names   = ["waf"]
}

}