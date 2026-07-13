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
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

