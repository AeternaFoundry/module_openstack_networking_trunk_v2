variable "networking_trunk_v2s" {
  description = <<EOT
Map of networking_trunk_v2s, attributes below
Required:
    - port_id
Optional:
    - admin_state_up
    - description
    - name
    - region
    - tags
    - tenant_id
    - sub_port (block):
        - port_id (required)
        - segmentation_id (required)
        - segmentation_type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    port_id        = string
    admin_state_up = optional(bool)
    description    = optional(string)
    name           = optional(string)
    region         = optional(string)
    tags           = optional(set(string))
    tenant_id      = optional(string)
    sub_port = optional(list(object({
      port_id           = string
      segmentation_id   = number
      segmentation_type = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

