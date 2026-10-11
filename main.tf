data "oci_apm_data_keys" "apm_data_keys_lookup" {
  for_each = var.apm_data_keys_lookup

  apm_domain_id = each.value.apm_domain_id
  data_key_type = each.value.data_key_type

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

