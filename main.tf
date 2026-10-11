resource "openstack_networking_trunk_v2" "networking_trunk_v2s" {
  for_each = var.networking_trunk_v2s

  port_id        = each.value.port_id
  admin_state_up = each.value.admin_state_up
  description    = each.value.description
  name           = each.value.name
  region         = each.value.region
  tags           = each.value.tags
  tenant_id      = each.value.tenant_id

  dynamic "sub_port" {
    for_each = each.value.sub_port != null ? each.value.sub_port : []
    content {
      port_id           = sub_port.value.port_id
      segmentation_id   = sub_port.value.segmentation_id
      segmentation_type = sub_port.value.segmentation_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

