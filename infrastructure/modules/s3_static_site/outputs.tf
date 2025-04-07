output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.static_site.bucket
}

output "website_endpoint" {
  description = "S3 static site endpoint"
  value       = aws_s3_bucket.static_site.website_endpoint
}
