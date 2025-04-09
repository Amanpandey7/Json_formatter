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
variable "lambda_package" {
  description = "Path to the zip file of the Lambda code"
  type        = string
}

variable "handler" {
  description = "Lambda handler"
  type        = string
}

variable "runtime" {
  description = "Lambda runtime"
  type        = string
}

variable "role_arn" {
  description = "IAM role ARN for Lambda execution"
  type        = string
}

variable "lambda_package" {
  description = "Path to the Lambda deployment package (ZIP file)"
  type        = string
}

variable "handler" {
  description = "The function entrypoint in your code"
  type        = string
}

variable "runtime" {
  description = "Lambda runtime version"
  type        = string
}

variable "role_arn" {
  description = "IAM Role ARN for the Lambda function"
  type        = string
}

variable "lambda_package" {
  description = "Path to the Lambda deployment package"
  type        = string
}

variable "handler" {
  description = "Lambda function handler"
  type        = string
}

variable "runtime" {
  description = "Lambda runtime"
  type        = string
}

variable "role_arn" {
  description = "IAM Role ARN to attach to Lambda function"
  type        = string
}

variable "lambda_package" {
  description = "Path to the Lambda deployment package (ZIP file)"
  type        = string
}

variable "handler" {
  description = "The function entrypoint in your code"
  type        = string
}

variable "runtime" {
  description = "Lambda runtime version"
  type        = string
}

variable "role_arn" {
  description = "IAM Role ARN for the Lambda function"
  type        = string
}
