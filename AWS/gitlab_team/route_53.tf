resource "aws_route53_record" "kenvpt" {
  zone_id = "${var.delegation_set}"
  name    = "${var.domain_name}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.my_instance.public_ip}"]
}


// Create Route53
resource "aws_route53_record" "www" {
  zone_id = "Z2C2TTKT34Z4V4"
  name    = "ibrahimyildirim.com."
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web-output.public_ip}"]
}