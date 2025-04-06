terraform {
  backend "s3" {
    bucket = "your-terraform-state-bucket"
    key    = "json-formatter/dev/terraform.tfstate"
    region = "us-east-1"
  }
}
