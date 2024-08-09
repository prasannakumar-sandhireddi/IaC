terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "model-genius-430507-c5"
}


resource "google_app_engine_application" "default" {
  project     = "model-genius-430507-c5"
  location_id = "asia-south1"
}
