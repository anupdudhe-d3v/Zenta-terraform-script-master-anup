resource "google_bigquery_dataset" "dataset" {
  project       = var.project_id
  dataset_id    = var.dataset_id
  friendly_name = var.dataset_name
  description   = "BigQuery dataset created via Terraform"
  location      = var.location

  default_table_expiration_ms = null
  labels = {
    environment = "test"
    managed_by  = "terraform"
  }
}

resource "google_bigquery_dataset_iam_member" "public_access" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  role       = "roles/bigquery.admin"
  member     = "allUsers"
}
