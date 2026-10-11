variable "workitemtrackingprocess_groups" {
  description = <<EOT
Map of workitemtrackingprocess_groups, attributes below
Required:
    - label
    - page_id
    - process_id
    - section_id
    - work_item_type_reference_name
Optional:
    - order
    - visible
    - control (block):
        - contribution (optional, block):
            - contribution_id (required)
            - height (optional)
            - inputs (optional)
            - show_on_deleted_work_item (optional)
        - id (required)
        - is_contribution (optional)
        - label (optional)
        - metadata (optional)
        - read_only (optional)
        - visible (optional)
        - watermark (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    label                         = string
    page_id                       = string
    process_id                    = string
    section_id                    = string
    work_item_type_reference_name = string
    order                         = optional(number)
    visible                       = optional(bool)
    control = optional(list(object({
      contribution = optional(object({
        contribution_id           = string
        height                    = optional(number)
        inputs                    = optional(map(string))
        show_on_deleted_work_item = optional(bool)
      }))
      id              = string
      is_contribution = optional(bool)
      label           = optional(string)
      metadata        = optional(string)
      read_only       = optional(bool)
      visible         = optional(bool)
      watermark       = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_groups : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.process_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_groups : (
        length(trimspace(v.work_item_type_reference_name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_groups : (
        length(trimspace(v.page_id)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_groups : (
        length(trimspace(v.section_id)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_groups : (
        length(trimspace(v.label)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_groups : (
        v.control == null || alltrue([for item in v.control : (length(trimspace(item.id)) > 0)])
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_groups : (
        v.control == null || alltrue([for item in v.control : (item.contribution == null || (length(trimspace(item.contribution.contribution_id)) > 0))])
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

