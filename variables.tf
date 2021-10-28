variable "github_org" {
  type        = string
  description = "GitHub organization to scope access"
}

variable "github_repo" {
  type        = string
  description = "GitHub repository to scope access"
}

variable "github_custom_claim" {
  type        = string
  default     = "ref:refs/heads/main"
  description = "GitHub custom OIDC claim to scope access"
}
