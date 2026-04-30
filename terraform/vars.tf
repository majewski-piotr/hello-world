variable "project_name" {
  description = "Logical project name used by Terraform resources and tags."
  type        = string
  default     = "my-gallery"
}

variable "aws_region" {
  description = "Primary AWS region where infrastructure is created."
  type        = string
  default     = "eu-central-1"
}
