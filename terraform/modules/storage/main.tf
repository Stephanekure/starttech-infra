resource "aws_s3_bucket" "frontend" {
  bucket_prefix = "starttech-frontend-bucket-"
  force_destroy = true
}

resource "aws_s3_bucket_public_access_block" "frontend_block" {
  bucket = aws_s3_bucket.frontend.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_ecr_repository" "backend_api" {
  name                 = "starttech-backend-api"
  image_tag_mutability = "MUTABLE"
  force_delete         = true
}