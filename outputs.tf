output "gateway_url" {
  description = "Endpoint URL of the API Gateway"
  value       = google_api_gateway_gateway.sample.default_hostname
}
