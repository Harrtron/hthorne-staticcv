terraform {
    backend "s3" {
        bucket = "harrtron-terraform-backend"
        key = "staticcv/state.tfstate"
        region = "eu-west-1"
        profile = "hthorne"
    }
}