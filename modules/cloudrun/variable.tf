variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "Region for Cloud Run"
  type        = string
}

variable "fe_image" {
  description = "Frontend container image"
  type        = string
}

variable "be_image" {
  description = "Backend container image"
  type        = string
}

variable "allow_unauthenticated" {
  description = "Whether services should allow public access"
  type        = bool
  default     = true
}
