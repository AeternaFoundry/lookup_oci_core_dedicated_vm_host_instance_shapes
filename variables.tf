variable "core_dedicated_vm_host_instance_shapes_lookup" {
  description = <<EOT
Map of core_dedicated_vm_host_instance_shapes_lookup, attributes below
Required:
    - compartment_id
Optional:
    - availability_domain
    - dedicated_vm_host_shape
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id          = string
    availability_domain     = optional(string)
    dedicated_vm_host_shape = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

