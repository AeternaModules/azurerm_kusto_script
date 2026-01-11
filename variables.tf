variable "kusto_scripts" {
  description = <<EOT
Map of kusto_scripts, attributes below
Required:
    - database_id
    - name
Optional:
    - continue_on_errors_enabled
    - force_an_update_when_value_changed
    - sas_token
    - script_content
    - url
EOT

  type = map(object({
    database_id                        = string
    name                               = string
    continue_on_errors_enabled         = optional(bool, false)
    force_an_update_when_value_changed = optional(string)
    sas_token                          = optional(string)
    script_content                     = optional(string)
    url                                = optional(string)
  }))
}

