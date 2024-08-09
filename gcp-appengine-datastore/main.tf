provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_app_engine_application" "app2" {
  location_id   = var.region
  auth_domain   = "example.com"
  database_type = "CLOUD_DATASTORE_COMPATIBILITY"
}

