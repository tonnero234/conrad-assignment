output "distribution_id" {
  description = "The ID of the CloudFront distribution."
  value       = aws_cloudfront_distribution.this.id
}

output "distribution_domain_name" {
  description = "The domain name of the CloudFront distribution."
  value       = aws_cloudfront_distribution.this.domain_name
}

output "origin_access_identity_id" {
  description = "The ID of the CloudFront origin access identity."
  value       = aws_cloudfront_origin_access_identity.this.id
}
