# terraform-aws-github-actions-oidc

Terraform module to configure Amazon Web Services (AWS) to trust GitHub's OpenID Connect (OIDC) as a federated identity. This enables services like GitHub Actions to access resources within AWS using short-lived credentials.

## Usage

```hcl
module "github_actions_aws_oidc" {
  source = "hectcastro/github-actions-oidc/aws"

  github_org          = "hectcastro"
  github_repo         = "terraform-aws-github-actions-oidc"
  github_custom_claim = "ref:refs/heads/main"
}
```
