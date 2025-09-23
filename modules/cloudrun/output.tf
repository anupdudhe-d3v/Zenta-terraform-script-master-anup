output "frontend_url" {
  description = "Deployed frontend URL"
  value       = google_cloud_run_service.frontend.status[0].url
}

output "backend_url" {
  description = "Deployed backend URL"
  value       = google_cloud_run_service.backend.status[0].url
}
