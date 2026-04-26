provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      project = "my-gallery"
      created = "terraform"
    }
  }
}

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

module "ecr" {
  source = "./ecr"
}
