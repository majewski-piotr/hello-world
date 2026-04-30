provider "aws" {
  # Configure the AWS provider using the default region for the project.
  region = "eu-central-1"

  default_tags {
    tags = {
      project = "my-gallery"
      created = "terraform"
    }
  }
}

# Read the current caller identity and region to support plan-time diagnostics
# and conditional logic if needed.
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

# ECR module that provisions the container registry for the application.
module "ecr" {
  source = "./ecr"
}
