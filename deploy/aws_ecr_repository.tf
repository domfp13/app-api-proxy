resource "aws_ecr_repository" "app-api-proxy" {
  name                 = "app-api-proxy"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
