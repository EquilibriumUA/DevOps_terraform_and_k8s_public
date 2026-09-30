terraform {
  backend "s3" {
    bucket       = "BucketName"
    key          = "terraform/dev/terraform.tfstate"
    region       = "eu-central-1"
    use_lockfile = true
  }
}