resource "aws_s3_bucket" "bucket" {
    bucket = "${var.websitename}"
    acl = "public-read"

    website {
        index_document = "index.html"
        error_document = "error.html"
    }

}