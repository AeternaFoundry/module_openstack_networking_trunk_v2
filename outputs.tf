output "networking_trunk_v2s_id" {
  description = "Map of id values across all networking_trunk_v2s, keyed the same as var.networking_trunk_v2s"
  value       = { for k, v in openstack_networking_trunk_v2.networking_trunk_v2s : k => v.id }
}
output "networking_trunk_v2s_admin_state_up" {
  description = "Map of admin_state_up values across all networking_trunk_v2s, keyed the same as var.networking_trunk_v2s"
  value       = { for k, v in openstack_networking_trunk_v2.networking_trunk_v2s : k => v.admin_state_up }
}
output "networking_trunk_v2s_all_tags" {
  description = "Map of all_tags values across all networking_trunk_v2s, keyed the same as var.networking_trunk_v2s"
  value       = { for k, v in openstack_networking_trunk_v2.networking_trunk_v2s : k => v.all_tags }
}
output "networking_trunk_v2s_description" {
  description = "Map of description values across all networking_trunk_v2s, keyed the same as var.networking_trunk_v2s"
  value       = { for k, v in openstack_networking_trunk_v2.networking_trunk_v2s : k => v.description }
}
output "networking_trunk_v2s_name" {
  description = "Map of name values across all networking_trunk_v2s, keyed the same as var.networking_trunk_v2s"
  value       = { for k, v in openstack_networking_trunk_v2.networking_trunk_v2s : k => v.name }
}
output "networking_trunk_v2s_port_id" {
  description = "Map of port_id values across all networking_trunk_v2s, keyed the same as var.networking_trunk_v2s"
  value       = { for k, v in openstack_networking_trunk_v2.networking_trunk_v2s : k => v.port_id }
}
output "networking_trunk_v2s_region" {
  description = "Map of region values across all networking_trunk_v2s, keyed the same as var.networking_trunk_v2s"
  value       = { for k, v in openstack_networking_trunk_v2.networking_trunk_v2s : k => v.region }
}
output "networking_trunk_v2s_sub_port" {
  description = "Map of sub_port values across all networking_trunk_v2s, keyed the same as var.networking_trunk_v2s"
  value       = { for k, v in openstack_networking_trunk_v2.networking_trunk_v2s : k => v.sub_port }
}
output "networking_trunk_v2s_tags" {
  description = "Map of tags values across all networking_trunk_v2s, keyed the same as var.networking_trunk_v2s"
  value       = { for k, v in openstack_networking_trunk_v2.networking_trunk_v2s : k => v.tags }
}
output "networking_trunk_v2s_tenant_id" {
  description = "Map of tenant_id values across all networking_trunk_v2s, keyed the same as var.networking_trunk_v2s"
  value       = { for k, v in openstack_networking_trunk_v2.networking_trunk_v2s : k => v.tenant_id }
}

