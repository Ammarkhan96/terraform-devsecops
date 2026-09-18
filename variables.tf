variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-north-1"
}

variable "bucket_name" {
  description = "Unique S3 Bucket name"
  type        = string
}
