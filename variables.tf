variable "sesv2_account_vdm_attributes" {
  description = <<EOT
Map of sesv2_account_vdm_attributes, attributes below
Required:
    - vdm_enabled
Optional:
    - region
    - dashboard_attributes (block):
        - engagement_metrics (optional)
    - guardian_attributes (block):
        - optimized_shared_delivery (optional)
EOT

  type = map(object({
    vdm_enabled = string
    region      = optional(string)
    dashboard_attributes = optional(object({
      engagement_metrics = optional(string)
    }))
    guardian_attributes = optional(object({
      optimized_shared_delivery = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

