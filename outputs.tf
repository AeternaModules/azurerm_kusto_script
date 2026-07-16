output "kusto_scripts_id" {
  description = "Map of id values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kusto_scripts_continue_on_errors_enabled" {
  description = "Map of continue_on_errors_enabled values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.continue_on_errors_enabled if v.continue_on_errors_enabled != null }
}
output "kusto_scripts_database_id" {
  description = "Map of database_id values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.database_id if v.database_id != null && length(v.database_id) > 0 }
}
output "kusto_scripts_force_an_update_when_value_changed" {
  description = "Map of force_an_update_when_value_changed values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.force_an_update_when_value_changed if v.force_an_update_when_value_changed != null && length(v.force_an_update_when_value_changed) > 0 }
}
output "kusto_scripts_name" {
  description = "Map of name values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kusto_scripts_principal_permissions_action" {
  description = "Map of principal_permissions_action values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.principal_permissions_action if v.principal_permissions_action != null && length(v.principal_permissions_action) > 0 }
}
output "kusto_scripts_sas_token" {
  description = "Map of sas_token values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.sas_token if v.sas_token != null && length(v.sas_token) > 0 }
  sensitive   = true
}
output "kusto_scripts_script_content" {
  description = "Map of script_content values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.script_content if v.script_content != null && length(v.script_content) > 0 }
  sensitive   = true
}
output "kusto_scripts_script_level" {
  description = "Map of script_level values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.script_level if v.script_level != null && length(v.script_level) > 0 }
}
output "kusto_scripts_url" {
  description = "Map of url values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.url if v.url != null && length(v.url) > 0 }
}

