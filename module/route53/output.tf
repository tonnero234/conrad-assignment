output "main_domain_zone_id" {
  description = "The Zone ID of the main domain in Route 53."
  value       = aws_route53_zone.main_domain.zone_id
}

