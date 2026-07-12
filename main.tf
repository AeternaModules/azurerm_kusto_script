data "azurerm_key_vault_secret" "sas_token" {
  for_each     = { for k, v in var.kusto_scripts : k => v if v.sas_token_key_vault_id != null && v.sas_token_key_vault_secret_name != null }
  name         = each.value.sas_token_key_vault_secret_name
  key_vault_id = each.value.sas_token_key_vault_id
}
data "azurerm_key_vault_secret" "script_content" {
  for_each     = { for k, v in var.kusto_scripts : k => v if v.script_content_key_vault_id != null && v.script_content_key_vault_secret_name != null }
  name         = each.value.script_content_key_vault_secret_name
  key_vault_id = each.value.script_content_key_vault_id
}
resource "azurerm_kusto_script" "kusto_scripts" {
  for_each = var.kusto_scripts

  database_id                        = each.value.database_id
  name                               = each.value.name
  continue_on_errors_enabled         = each.value.continue_on_errors_enabled
  force_an_update_when_value_changed = each.value.force_an_update_when_value_changed
  principal_permissions_action       = each.value.principal_permissions_action
  sas_token                          = each.value.sas_token != null ? each.value.sas_token : try(data.azurerm_key_vault_secret.sas_token[each.key].value, null)
  script_content                     = each.value.script_content != null ? each.value.script_content : try(data.azurerm_key_vault_secret.script_content[each.key].value, null)
  script_level                       = each.value.script_level
  url                                = each.value.url
}

