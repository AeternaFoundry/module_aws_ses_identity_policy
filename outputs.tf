output "ses_identity_policies_id" {
  description = "Map of id values across all ses_identity_policies, keyed the same as var.ses_identity_policies"
  value       = { for k, v in aws_ses_identity_policy.ses_identity_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ses_identity_policies_identity" {
  description = "Map of identity values across all ses_identity_policies, keyed the same as var.ses_identity_policies"
  value       = { for k, v in aws_ses_identity_policy.ses_identity_policies : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "ses_identity_policies_name" {
  description = "Map of name values across all ses_identity_policies, keyed the same as var.ses_identity_policies"
  value       = { for k, v in aws_ses_identity_policy.ses_identity_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ses_identity_policies_policy" {
  description = "Map of policy values across all ses_identity_policies, keyed the same as var.ses_identity_policies"
  value       = { for k, v in aws_ses_identity_policy.ses_identity_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "ses_identity_policies_region" {
  description = "Map of region values across all ses_identity_policies, keyed the same as var.ses_identity_policies"
  value       = { for k, v in aws_ses_identity_policy.ses_identity_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

