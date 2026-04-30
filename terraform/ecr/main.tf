resource "aws_ecr_repository" "this" {
  # The ECR repository where container images for the gallery app are stored.
  name                 = "my-gallery"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    # Automatically scan images on push for vulnerabilities.
    scan_on_push = true
  }

  encryption_configuration {
    # Use AWS-managed KMS encryption for repository storage.
    encryption_type = "KMS"
  }
}
