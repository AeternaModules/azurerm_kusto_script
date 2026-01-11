resource "azurerm_kusto_script" "kusto_scripts" {
  for_each = var.kusto_scripts

  database_id                        = each.value.database_id
  name                               = each.value.name
  continue_on_errors_enabled         = each.value.continue_on_errors_enabled
  force_an_update_when_value_changed = each.value.force_an_update_when_value_changed
  sas_token                          = each.value.sas_token
  script_content                     = each.value.script_content
  url                                = each.value.url
}

