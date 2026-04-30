resource "aws_ecr_repository" "this" {
  # The ECR repository storing the gallery container images.
  name                 = "my-gallery"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    # Enable vulnerability scanning for images when they are pushed.
    scan_on_push = true
  }

  encryption_configuration {
    # Encrypt repository storage using AWS KMS.
    encryption_type = "KMS"
  }
}
