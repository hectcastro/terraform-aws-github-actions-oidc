provider "aws" {
  region = "us-east-1"
}

module "github_actions_aws_oidc" {
  source = "../"

  github_org          = "hectcastro"
  github_repo         = "terraform-aws-github-actions-oidc"
  github_custom_claim = "ref:refs/heads/main"
}

resource "aws_iam_policy" "sts_get_ident" {
  name        = "STSGetIdentity"
  description = "Allow sts:GetCallerIdentity"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "sts:GetCallerIdentity"
        ]

        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "sts_get_ident" {
  role       = module.github_actions_aws_oidc.role_name
  policy_arn = aws_iam_policy.sts_get_ident.arn
}
