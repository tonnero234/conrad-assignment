variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "origin_access_identity_id" {
  description = "The ID of the CloudFront origin access identity."
  type        = string
}
