variable "apm_data_keys_lookup" {
  description = <<EOT
Map of apm_data_keys_lookup, attributes below
Required:
    - apm_domain_id
Optional:
    - data_key_type
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    apm_domain_id = string
    data_key_type = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

