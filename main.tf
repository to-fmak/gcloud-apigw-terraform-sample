resource "google_api_gateway_api" "sample" {
  provider = google-beta
  api_id   = "sample-api"
}

resource "google_api_gateway_api_config" "sample" {
  provider      = google-beta
  api           = google_api_gateway_api.sample.api_id
  api_config_id = "sample-api-config"

  openapi_documents {
    document {
      path     = "spec.yaml"
      contents = filebase64("swagger/openapi.yaml")
    }
  }
}

resource "google_api_gateway_gateway" "sample" {
  provider   = google-beta
  region     = var.region
  api_config = google_api_gateway_api_config.sample.id
  gateway_id = "sample-api-gateway"
}
