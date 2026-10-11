output "apm_data_keys_lookup_id" {
  description = "Map of id values across all apm_data_keys_lookup, keyed the same as var.apm_data_keys_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_apm_data_keys.apm_data_keys_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apm_data_keys_lookup_apm_domain_id" {
  description = "Map of apm_domain_id values across all apm_data_keys_lookup, keyed the same as var.apm_data_keys_lookup except keys with no apm_domain_id are omitted"
  value       = { for k, v in data.oci_apm_data_keys.apm_data_keys_lookup : k => v.apm_domain_id if v.apm_domain_id != null && length(v.apm_domain_id) > 0 }
}
output "apm_data_keys_lookup_data_key_type" {
  description = "Map of data_key_type values across all apm_data_keys_lookup, keyed the same as var.apm_data_keys_lookup except keys with no data_key_type are omitted"
  value       = { for k, v in data.oci_apm_data_keys.apm_data_keys_lookup : k => v.data_key_type if v.data_key_type != null && length(v.data_key_type) > 0 }
}
output "apm_data_keys_lookup_data_keys" {
  description = "Map of data_keys values across all apm_data_keys_lookup, keyed the same as var.apm_data_keys_lookup except keys with no data_keys are omitted"
  value       = { for k, v in data.oci_apm_data_keys.apm_data_keys_lookup : k => v.data_keys if v.data_keys != null && length(v.data_keys) > 0 }
}
output "apm_data_keys_lookup_filter" {
  description = "Map of filter values across all apm_data_keys_lookup, keyed the same as var.apm_data_keys_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_apm_data_keys.apm_data_keys_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

