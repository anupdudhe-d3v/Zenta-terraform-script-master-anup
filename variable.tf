variable "project_id" {
  description = "The project ID where resources will be deployed"
  type        = string
}



variable "region" {
  description = "Region to deploy resources"
  type        = string
}

variable "zone" {
  description = "Zone to deploy resources"
  type        = string
}

variable "vpc_name" {
  type        = string
  description = "Name of VPC"
}

variable "subnet_ip_cidr_range" {
  type        = string
  description = "CIDR block for subnet"
}

variable "instance_name" {
  type        = string
  description = "Base name for VM instances"
}

variable "machine_type" {
  type        = string
}

variable "boot_image" {
  type        = string
}

variable "disk_size_gb" {
  type        = number
}

variable "disk_type" {
  type        = string
}

# Cloud SQL
variable "db_instance_name" {
  type = string
}

variable "db_version" {
  type = string
}

variable "db_tier" {
  type = string
}

variable "sql_instance_disk_size" {
  type = number
}

variable "availability_type" {
  type = string
}

variable "db_name" {
  type = string
}

variable "db_user" {
  type = string
}

variable "db_password" {
  type = string
}

# Cloud Run
variable "fe_image" {
  type = string
}

variable "be_image" {
  type = string
}

variable "allow_unauthenticated" {
  type = bool
}

# BigQuery
variable "dataset_id" {
  type = string
}

variable "dataset_name" {
  type = string
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
  default     = [
    "compute.googleapis.com",
    "iam.googleapis.com"
  ]
}
