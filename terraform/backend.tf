terraform {
  # Remote state backend configuration using an S3 bucket.
  # The backend is configured with server-side encryption and state locking
  # to enable safe collaboration and automation.
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
