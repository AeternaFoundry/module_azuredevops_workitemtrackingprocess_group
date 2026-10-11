resource "azuredevops_workitemtrackingprocess_group" "workitemtrackingprocess_groups" {
  for_each = var.workitemtrackingprocess_groups

  label                         = each.value.label
  page_id                       = each.value.page_id
  process_id                    = each.value.process_id
  section_id                    = each.value.section_id
  work_item_type_reference_name = each.value.work_item_type_reference_name
  order                         = each.value.order
  visible                       = each.value.visible

  dynamic "control" {
    for_each = each.value.control != null ? each.value.control : []
    content {
      dynamic "contribution" {
        for_each = control.value.contribution != null ? [control.value.contribution] : []
        content {
          contribution_id           = contribution.value.contribution_id
          height                    = contribution.value.height
          inputs                    = contribution.value.inputs
          show_on_deleted_work_item = contribution.value.show_on_deleted_work_item
        }
      }
      id              = control.value.id
      is_contribution = control.value.is_contribution
      label           = control.value.label
      metadata        = control.value.metadata
      read_only       = control.value.read_only
      visible         = control.value.visible
      watermark       = control.value.watermark
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

