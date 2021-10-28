output "role_name" {
  value       = aws_iam_role.github.name
  description = "AWS IAM role name to assume"
}

output "role_arn" {
  value       = aws_iam_role.github.arn
  description = "AWS IAM role ARN to assume"
}
