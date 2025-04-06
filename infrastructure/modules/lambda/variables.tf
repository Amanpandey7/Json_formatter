variable "function_name" {
  description = "Lambda function name"
  type        = string
}

variable "lambda_package" {
  description = "Path to zipped Lambda code"
  type        = string
}

variable "environment_variables" {
  description = "Environment variables for Lambda"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Tags to apply"
  type        = map(string)
  default     = {}
}
