resource "google_project_service" "sample" {
  service = google_api_gateway_api.sample.managed_service
}

resource "google_apikeys_key" "sample" {
  name         = "sample-api-key"
  display_name = "sample-api-key"

  restrictions {
    api_targets {
      service = google_project_service.sample.service
    }
  }
}
