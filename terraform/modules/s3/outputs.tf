output "s3endpoint" {
    value = "${aws_s3_bucket.bucket.website_endpoint}"
}

output "s3bucketname" {
    value = "${aws_s3_bucket.bucket.id}"
}