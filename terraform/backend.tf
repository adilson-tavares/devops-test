terraform {
  backend "s3" {
    bucket = "terraform-works"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}
