output "kusto_scripts_continue_on_errors_enabled" {
  description = "Map of continue_on_errors_enabled values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.continue_on_errors_enabled }
}
output "kusto_scripts_database_id" {
  description = "Map of database_id values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.database_id }
}
output "kusto_scripts_force_an_update_when_value_changed" {
  description = "Map of force_an_update_when_value_changed values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.force_an_update_when_value_changed }
}
output "kusto_scripts_name" {
  description = "Map of name values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.name }
}
output "kusto_scripts_principal_permissions_action" {
  description = "Map of principal_permissions_action values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.principal_permissions_action }
}
output "kusto_scripts_sas_token" {
  description = "Map of sas_token values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.sas_token }
  sensitive   = true
}
output "kusto_scripts_script_content" {
  description = "Map of script_content values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.script_content }
  sensitive   = true
}
output "kusto_scripts_script_level" {
  description = "Map of script_level values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.script_level }
}
output "kusto_scripts_url" {
  description = "Map of url values across all kusto_scripts, keyed the same as var.kusto_scripts"
  value       = { for k, v in azurerm_kusto_script.kusto_scripts : k => v.url }
}

