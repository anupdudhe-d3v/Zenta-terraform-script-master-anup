variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "dataset_id" {
  description = "The BigQuery dataset ID (must be unique within project)"
  type        = string
}

variable "dataset_name" {
  description = "Friendly display name for the dataset"
  type        = string
}

variable "location" {
  description = "Location for the dataset (e.g., US, EU, us-central1)"
  type        = string
  default     = "US"
}
