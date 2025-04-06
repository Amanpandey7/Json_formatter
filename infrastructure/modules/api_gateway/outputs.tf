output "api_gateway_url" {
  description = "Invoke URL for API Gateway"
  value       = aws_apigatewayv2_stage.this.invoke_url
}
