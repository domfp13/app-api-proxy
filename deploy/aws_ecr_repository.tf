resource "aws_ecr_repository" "app-api-proxy" {
  name                 = "app-api-proxy"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository_policy" "app-api-proxy-policy" {
  repository = aws_ecr_repository.app-api-proxy.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ecr:*"
            ],
            "Resource": "arn:aws:ecr:us-east-1:*:repository/app-api-proxy"
        },
        {
            "Effect": "Allow",
            "Action": [
                "ecr:GetAuthorizationToken"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}
