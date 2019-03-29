output "hosted_zone" {
    value = "${data.aws_route53_zone.hosted_zone.id}"
}