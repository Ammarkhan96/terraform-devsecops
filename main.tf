resource "aws_s3_bucket" "app_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "terraform-devsecops"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "app_bucket" {
  bucket = aws_s3_bucket.app_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "app_bucket" {
  bucket = aws_s3_bucket.app_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

output "s3_bucket_name" {
  description = "Created S3 bucket name"
  value       = aws_s3_bucket.app_bucket.bucket
}

output "s3_bucket_arn" {
  description = "Created S3 bucket ARN"
  value       = aws_s3_bucket.app_bucket.arn
}
