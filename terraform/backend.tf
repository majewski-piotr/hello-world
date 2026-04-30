terraform {
  # Remote state is stored in an S3 bucket so that Terraform state is shared
  # and locked across the team or automation environment.
  backend "s3" {
    bucket       = "terraform-state-195275673810-my-gallery"
    key          = "infra/terraform.tfstate"
    region       = "eu-central-1"
    encrypt      = true
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.42"
    }
  }
}
