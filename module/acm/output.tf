output "certificate_arn" {
  description = "The ARN of the ACM certificate."
  value       = aws_acm_certificate.this.arn
}

output "certificate_domain_name" {
  description = "The domain name associated with the ACM certificate."
  value       = aws_acm_certificate.this.domain_name
}
