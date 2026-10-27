output "workitemtrackingprocess_groups_id" {
  description = "Map of id values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.id }
}
output "workitemtrackingprocess_groups_control" {
  description = "Map of control values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.control }
}
output "workitemtrackingprocess_groups_label" {
  description = "Map of label values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.label }
}
output "workitemtrackingprocess_groups_order" {
  description = "Map of order values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.order }
}
output "workitemtrackingprocess_groups_page_id" {
  description = "Map of page_id values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.page_id }
}
output "workitemtrackingprocess_groups_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.process_id }
}
output "workitemtrackingprocess_groups_section_id" {
  description = "Map of section_id values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.section_id }
}
output "workitemtrackingprocess_groups_visible" {
  description = "Map of visible values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.visible }
}
output "workitemtrackingprocess_groups_work_item_type_reference_name" {
  description = "Map of work_item_type_reference_name values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.work_item_type_reference_name }
}

