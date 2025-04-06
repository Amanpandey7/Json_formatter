variable "aws_region" {
  default     = "us-east-1"
  description = "AWS region to deploy to"
}

variable "site_bucket_name" {
  description = "S3 bucket name for static site"
  type        = string
}

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "lambda_role_arn" {
  description = "IAM role ARN for Lambda function"
  type        = string
}
