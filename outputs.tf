output "kusto_scripts" {
  description = "All kusto_script resources"
  value       = azurerm_kusto_script.kusto_scripts
  sensitive   = true
}
output "kusto_scripts_continue_on_errors_enabled" {
  description = "List of continue_on_errors_enabled values across all kusto_scripts"
  value       = [for k, v in azurerm_kusto_script.kusto_scripts : v.continue_on_errors_enabled]
}
output "kusto_scripts_database_id" {
  description = "List of database_id values across all kusto_scripts"
  value       = [for k, v in azurerm_kusto_script.kusto_scripts : v.database_id]
}
output "kusto_scripts_force_an_update_when_value_changed" {
  description = "List of force_an_update_when_value_changed values across all kusto_scripts"
  value       = [for k, v in azurerm_kusto_script.kusto_scripts : v.force_an_update_when_value_changed]
}
output "kusto_scripts_name" {
  description = "List of name values across all kusto_scripts"
  value       = [for k, v in azurerm_kusto_script.kusto_scripts : v.name]
}
output "kusto_scripts_principal_permissions_action" {
  description = "List of principal_permissions_action values across all kusto_scripts"
  value       = [for k, v in azurerm_kusto_script.kusto_scripts : v.principal_permissions_action]
}
output "kusto_scripts_sas_token" {
  description = "List of sas_token values across all kusto_scripts"
  value       = [for k, v in azurerm_kusto_script.kusto_scripts : v.sas_token]
  sensitive   = true
}
output "kusto_scripts_script_content" {
  description = "List of script_content values across all kusto_scripts"
  value       = [for k, v in azurerm_kusto_script.kusto_scripts : v.script_content]
  sensitive   = true
}
output "kusto_scripts_script_level" {
  description = "List of script_level values across all kusto_scripts"
  value       = [for k, v in azurerm_kusto_script.kusto_scripts : v.script_level]
}
output "kusto_scripts_url" {
  description = "List of url values across all kusto_scripts"
  value       = [for k, v in azurerm_kusto_script.kusto_scripts : v.url]
}

