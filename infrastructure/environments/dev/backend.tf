terraform {
  backend "s3" {
    bucket = "json-formatter-dev-terraform-state"
    key    = "json-formatter/dev/terraform.tfstate"
    region = "us-east-1"
  }
}
