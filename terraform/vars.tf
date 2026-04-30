variable "project_name" {
  description = "Logical name used for the project and resource tagging."
  type        = string
  default     = "my-gallery"
}

variable "aws_region" {
  description = "AWS region where infrastructure resources are created."
  type        = string
  default     = "eu-central-1"
}
