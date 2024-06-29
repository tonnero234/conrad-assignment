resource "aws_acm_certificate" "this" {
  domain_name   = var.domain_name
  validation_method = var.validation_method

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Environment = var.environment
  }
}

resource "aws_acm_certificate_validation" "this" {
  certificate_arn         = aws_acm_certificate.this.arn
  validation_record_fqdns = [for option in aws_acm_certificate.this.domain_validation_options : option.resource_record_name]
}
