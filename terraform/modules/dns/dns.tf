resource "aws_route53_record" "record" {
    zone_id = "${data.aws_route53_zone.hosted_zone.zone_id}"
    name = "${var.websitename}"
    ttl = "300"
    type = "CNAME"
    records = ["${var.s3endpoint}"]
}