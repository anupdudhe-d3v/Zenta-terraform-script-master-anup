resource "google_project" "this" {
  name            = var.project_name
  project_id      = var.project_id
  org_id          = var.org_id
  billing_account = var.billing_account
}

# Enable APIs
resource "google_project_service" "services" {
  for_each = toset(var.enable_apis)
  project  = google_project.this.project_id
  service  = each.key
}