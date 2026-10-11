variable "ses_identity_policies" {
  description = <<EOT
Map of ses_identity_policies, attributes below
Required:
    - identity
    - name
    - policy
Optional:
    - region
EOT

  type = map(object({
    identity = string
    name     = string
    policy   = string
    region   = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

