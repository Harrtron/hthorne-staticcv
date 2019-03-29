output "s3endpoint" {
    value = "${module.s3.s3endpoint}"
}

output "hosted_zone" {
    value = "${module.dns.hosted_zone}"
}

output "s3bucketname" {
    value = "${module.s3.s3bucketname}"
}