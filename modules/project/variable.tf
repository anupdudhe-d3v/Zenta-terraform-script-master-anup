variable "project_id" {
  description = "Unique ID for the project"
  type        = string
}

variable "project_name" {
  description = "Display name of the project"
  type        = string
}

variable "org_id" {
  description = "Organization ID (or use folder_id instead)"
  type        = string
}

variable "billing_account" {
  description = "Billing account ID"
  type        = string
}

variable "enable_apis" {
  description = "List of APIs to enable on the project"
  type        = list(string)
}

