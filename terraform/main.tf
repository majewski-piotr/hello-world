provider "aws" {
  # Configure the AWS provider for the default project region.
  region = "eu-central-1"

  default_tags {
    tags = {
      project = "my-gallery"
      created = "terraform"
    }
  }
}

# Data resources are used to reference information about the current AWS caller
# and the configured AWS region during plan and apply.
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

# Provision the ECR module that manages the container registry.
module "ecr" {
  source = "./ecr"
}
