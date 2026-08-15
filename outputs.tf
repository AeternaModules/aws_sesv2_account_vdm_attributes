output "sesv2_account_vdm_attributes_id" {
  description = "Map of id values across all sesv2_account_vdm_attributes, keyed the same as var.sesv2_account_vdm_attributes"
  value       = { for k, v in aws_sesv2_account_vdm_attributes.sesv2_account_vdm_attributes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sesv2_account_vdm_attributes_dashboard_attributes" {
  description = "Map of dashboard_attributes values across all sesv2_account_vdm_attributes, keyed the same as var.sesv2_account_vdm_attributes"
  value       = { for k, v in aws_sesv2_account_vdm_attributes.sesv2_account_vdm_attributes : k => one(v.dashboard_attributes) if v.dashboard_attributes != null && length(v.dashboard_attributes) > 0 }
}
output "sesv2_account_vdm_attributes_guardian_attributes" {
  description = "Map of guardian_attributes values across all sesv2_account_vdm_attributes, keyed the same as var.sesv2_account_vdm_attributes"
  value       = { for k, v in aws_sesv2_account_vdm_attributes.sesv2_account_vdm_attributes : k => one(v.guardian_attributes) if v.guardian_attributes != null && length(v.guardian_attributes) > 0 }
}
output "sesv2_account_vdm_attributes_region" {
  description = "Map of region values across all sesv2_account_vdm_attributes, keyed the same as var.sesv2_account_vdm_attributes"
  value       = { for k, v in aws_sesv2_account_vdm_attributes.sesv2_account_vdm_attributes : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sesv2_account_vdm_attributes_vdm_enabled" {
  description = "Map of vdm_enabled values across all sesv2_account_vdm_attributes, keyed the same as var.sesv2_account_vdm_attributes"
  value       = { for k, v in aws_sesv2_account_vdm_attributes.sesv2_account_vdm_attributes : k => v.vdm_enabled if v.vdm_enabled != null && length(v.vdm_enabled) > 0 }
}

