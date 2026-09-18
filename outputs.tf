output "s3_bucket_name" {
  description = "Created S3 bucket name"
  value       = aws_s3_bucket.app_bucket.bucket
}

output "s3_bucket_arn" {
  description = "Created S3 bucket ARN"
  value       = aws_s3_bucket.app_bucket.arn
}
