resource "google_cloud_run_service" "backend" {
  name     = "cloudrun-backend"
  location = var.region

  template {
    spec {
      containers {
        image = var.be_image
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_service" "frontend" {
  name     = "cloudrun-frontend"
  location = var.region

  template {
    spec {
      containers {
        image = var.fe_image
        env {
          name  = "BACKEND_URL"
          value = google_cloud_run_service.backend.status[0].url
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

# Make them public if needed
resource "google_cloud_run_service_iam_member" "frontend_invoker" {
  count    = var.allow_unauthenticated ? 1 : 0
  location = google_cloud_run_service.frontend.location
  service  = google_cloud_run_service.frontend.name
  role     = "roles/run.invoker"
  member   = "allUsers"
}

resource "google_cloud_run_service_iam_member" "backend_invoker" {
  count    = var.allow_unauthenticated ? 1 : 0
  location = google_cloud_run_service.backend.location
  service  = google_cloud_run_service.backend.name
  role     = "roles/run.invoker"
  member   = "allUsers"
}
