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
    - sas_token_key_vault_id (alternative to sas_token - read from Key Vault instead)
    - sas_token_key_vault_secret_name (alternative to sas_token - read from Key Vault instead)
    - script_content
    - script_content_key_vault_id (alternative to script_content - read from Key Vault instead)
    - script_content_key_vault_secret_name (alternative to script_content - read from Key Vault instead)
    - script_level
    - url
EOT

  type = map(object({
    database_id                          = string
    name                                 = string
    continue_on_errors_enabled           = optional(bool)
    force_an_update_when_value_changed   = optional(string)
    principal_permissions_action         = optional(string)
    sas_token                            = optional(string)
    sas_token_key_vault_id               = optional(string)
    sas_token_key_vault_secret_name      = optional(string)
    script_content                       = optional(string)
    script_content_key_vault_id          = optional(string)
    script_content_key_vault_secret_name = optional(string)
    script_level                         = optional(string)
    url                                  = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_kusto_script's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: database_id
  #   source:    [from commonids.ValidateKustoDatabaseID] !ok
  # path: database_id
  #   source:    [from commonids.ValidateKustoDatabaseID] err != nil
  # path: force_an_update_when_value_changed
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: url
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: sas_token
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: script_content
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: script_level
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: principal_permissions_action
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

