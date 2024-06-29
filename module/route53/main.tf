resource "aws_route53_zone" "main_domain" {
  name = var.main_domain
}

resource "aws_route53_record" "main_domain_record" {
  zone_id = "Z0273290C20QSK62JJJ2"  # Replace with the correct hosted zone ID
  name    = var.main_domain
  type    = "A"

    alias {
        name                    = "d26xp1i2yvoxpw.cloudfront.net"
        zone_id                = "Z0273290C20QSK62JJJ2"  # Replace with the correct hosted zone ID
        evaluate_target_health = false
}
}