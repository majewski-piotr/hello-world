output "repository_url" {
  description = "The AWS ECR repository URL produced by the ECR module."
  value       = module.ecr.repository_url
}
