variable "domain_name" {
  description = "tonynoah.me"
  type        = string
}

variable "validation_method" {
  description = "The method to use for validation. DNS or EMAIL."
  type        = string
  default     = "DNS"
}

variable "environment" {
  description = "The environment name for tagging purposes."
  type        = string
}

variable "aws_region" {
  description = "us-east-1"
  type        = string
}
