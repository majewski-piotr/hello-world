output "repository_url" {
  description = "The URL of the Amazon ECR repository created by this module."
  value       = aws_ecr_repository.this.repository_url
}
