provider "aws" {
  region = var.aws_region
}

module "s3_bucket" {
  source                     = "./module/s3"
  bucket_name                = var.bucket_name
  origin_access_identity_id  = module.cloudfront_distribution.origin_access_identity_id
}

module "cloudfront_distribution" {
  source      = "./module/cloudfront"

  bucket_name = var.bucket_name
}

module "aws_route53" {
    source = "./module/route53"
    aws_region = "us-east-1"
    main_domain               = "tonynoah.me"
    alias_target_domain_name  = module.cloudfront_distribution.distribution_domain_name
    alias_target_zone_id      = module.cloudfront_distribution.distribution_id
  
}



