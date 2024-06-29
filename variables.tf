variable "aws_region" {
  description = "The AWS region to deploy the resources."
  type        = string
  default     = "us-west-2"
}

variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
  default     = "tony-altschool"
}
