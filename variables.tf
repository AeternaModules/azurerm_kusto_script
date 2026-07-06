variable "kusto_scripts" {
  description = <<EOT
Map of kusto_scripts, attributes below
Required:
    - database_id
    - name
Optional:
    - continue_on_errors_enabled
    - force_an_update_when_value_changed
    - principal_permissions_action
    - sas_token
    - script_content
    - script_level
    - url
EOT

  type = map(object({
    database_id                        = string
    name                               = string
    continue_on_errors_enabled         = optional(bool) # Default: false
    force_an_update_when_value_changed = optional(string)
    principal_permissions_action       = optional(string) # Default: "RetainPermissionOnScriptCompletion"
    sas_token                          = optional(string)
    script_content                     = optional(string)
    script_level                       = optional(string) # Default: "Database"
    url                                = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.kusto_scripts : (
        v.force_an_update_when_value_changed == null || (length(v.force_an_update_when_value_changed) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_scripts : (
        v.url == null || (length(v.url) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_scripts : (
        v.sas_token == null || (length(v.sas_token) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_scripts : (
        v.script_content == null || (length(v.script_content) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_kusto_script's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: database_id
  #   source:    [from commonids.ValidateKustoDatabaseID] !ok
  # path: database_id
  #   source:    [from commonids.ValidateKustoDatabaseID] err != nil
  # path: script_level
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: principal_permissions_action
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

