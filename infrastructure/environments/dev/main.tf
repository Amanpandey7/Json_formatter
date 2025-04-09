provider "aws" {
  region = var.aws_region
}

module "s3_static_site" {
  source      = "../../modules/s3_static_site"
  bucket_name = var.site_bucket_name
}

module "lambda" {
  source              = "../../modules/lambda"
  function_name       = var.lambda_function_name
  handler             = "main.lambda_handler"
  runtime             = "python3.9"
  role_arn            = var.lambda_role_arn
  source_path         = "../../../lambda"
}

module "api_gateway" {
  source                = "../../modules/api_gateway"
  api_name              = "json-formatter-api-dev"
  lambda_function_name  = module.lambda.function_name
  lambda_invoke_arn     = module.lambda.invoke_arn
}

output "site_url" {
  value = module.s3_static_site.website_url
}

output "api_url" {
  value = module.api_gateway.api_endpoint
}

output "api_gateway_url" {
  value = module.api_gateway.api_gateway_url
}

module "lambda" {
  source          = "../../modules/lambda"
  lambda_package  = "${path.module}/../../../../lambda/lambda.zip"
  handler         = "main.lambda_handler"
  runtime         = "python3.9"
  role_arn        = var.lambda_role_arn
}

module "lambda" {
  source          = "../../modules/lambda"
  lambda_package  = "${path.module}/../../../../lambda/lambda.zip"
  handler         = "main.lambda_handler"
  runtime         = "python3.9"
  role_arn        = var.lambda_role_arn
}

module "lambda" {
  source          = "../../modules/lambda"
  lambda_package  = "${path.module}/../../../lambda/lambda.zip"
  handler         = "main.lambda_handler"
  runtime         = "python3.9"
  role_arn        = var.lambda_role_arn
}

module "lambda" {
  source          = "../../modules/lambda"
  lambda_package  = "${path.module}/../../../lambda/lambda.zip"
  handler         = "main.lambda_handler"
  runtime         = "python3.9"
  role_arn        = var.lambda_role_arn
}
