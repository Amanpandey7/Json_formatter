provider "aws" {
  region = "us-east-1"
}
output "api_gateway_url" {
  value = module.api_gateway.api_gateway_url
}
