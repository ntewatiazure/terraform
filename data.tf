data "azurerm_key_vault" "key-vault" {
    name = "lerntf-vault"
    resource_group_name = "remote-state"
}

data "azurerm_key_vault_secret" "admin_password" {
  
  name = "admin-password"
  key_vault_id = azurerm_key_vault.key-vault.id
}