provider "google" {
  credentials = file("service-account.json")
  project     = "test-project"
  region      = "asia-south1"
}

resource "google_app_engine_application" "test-from-terraform" {
  project = google_project.default.project_id
  location_id = "asia-south1"
}

resource "google_app_engine_version" "default" {
  app_id     = google_app_engine_application.default.app_id
  version_id = "1"

  runtime     = "java17"
  instance_class = "F2"

  deployment {
    file = "gs://container-experimentation.appspot.com/test/helloworld-0.0.1-SNAPSHOT.jar"
  }
}
