output "workitemtrackingprocess_groups_id" {
  description = "Map of id values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups except keys with no id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workitemtrackingprocess_groups_control" {
  description = "Map of control values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups except keys with no control are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.control if v.control != null && length(v.control) > 0 }
}
output "workitemtrackingprocess_groups_label" {
  description = "Map of label values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups except keys with no label are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.label if v.label != null && length(v.label) > 0 }
}
output "workitemtrackingprocess_groups_order" {
  description = "Map of order values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups except keys with no order are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.order if v.order != null }
}
output "workitemtrackingprocess_groups_page_id" {
  description = "Map of page_id values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups except keys with no page_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.page_id if v.page_id != null && length(v.page_id) > 0 }
}
output "workitemtrackingprocess_groups_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups except keys with no process_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.process_id if v.process_id != null && length(v.process_id) > 0 }
}
output "workitemtrackingprocess_groups_section_id" {
  description = "Map of section_id values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups except keys with no section_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.section_id if v.section_id != null && length(v.section_id) > 0 }
}
output "workitemtrackingprocess_groups_visible" {
  description = "Map of visible values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups except keys with no visible are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.visible if v.visible != null }
}
output "workitemtrackingprocess_groups_work_item_type_reference_name" {
  description = "Map of work_item_type_reference_name values across all workitemtrackingprocess_groups, keyed the same as var.workitemtrackingprocess_groups except keys with no work_item_type_reference_name are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_group.workitemtrackingprocess_groups : k => v.work_item_type_reference_name if v.work_item_type_reference_name != null && length(v.work_item_type_reference_name) > 0 }
}

