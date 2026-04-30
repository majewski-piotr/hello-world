output "repository_url" {
  description = "The Amazon ECR repository URL created by the ECR module."
  value       = module.ecr.repository_url
}
