data "oci_core_dedicated_vm_host_instance_shapes" "core_dedicated_vm_host_instance_shapes_lookup" {
  for_each = var.core_dedicated_vm_host_instance_shapes_lookup

  compartment_id          = each.value.compartment_id
  availability_domain     = each.value.availability_domain
  dedicated_vm_host_shape = each.value.dedicated_vm_host_shape

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

