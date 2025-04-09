resource "aws_lambda_function" "this" {
  function_name = var.function_name
  handler       = var.handler
  runtime       = var.runtime
  role          = var.role_arn

  filename         = data.archive_file.lambda_output.output_path
  source_code_hash = data.archive_file.lambda_output.output_base64sha256
}

data "archive_file" "lambda_output" {
  type        = "zip"
  source_dir  = var.source_path
  output_path = "${path.module}/build/${var.function_name}.zip"
}


