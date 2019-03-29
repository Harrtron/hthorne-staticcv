module "s3" {
    websitename = "${var.websitename}"
    source = "./modules/s3"
}

module "dns" {
    websitename = "${var.websitename}"
    rootdomain = "${var.rootdomain}"
    s3endpoint = "${module.s3.s3endpoint}"
    source = "./modules/dns"
}