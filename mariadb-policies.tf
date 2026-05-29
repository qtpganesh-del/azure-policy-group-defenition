data "azurerm_policy_definition" "mariadb_public_access" {
  display_name = "Public network access should be disabled for MariaDB servers"
}

data "azurerm_policy_definition" "mariadb_private_endpoint" {
  display_name = "Private endpoint should be enabled for MariaDB servers"
}

data "azurerm_policy_definition" "mariadb_backup" {
  display_name = "Geo-redundant backup should be enabled for Azure Database for MariaDB"
}