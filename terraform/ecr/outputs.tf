output "repository_url" {
  description = "The repository URL for the created AWS ECR registry."
  value       = aws_ecr_repository.this.repository_url
}
