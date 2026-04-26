output "repository_url" {
  value       = module.ecr.this.repository_url
  description = "The URL of the ECR repository"
}
