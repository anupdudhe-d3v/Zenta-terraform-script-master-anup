variable "region" {
  description = "Region for Cloud SQL instance"
  type        = string
}

variable "db_version" {
  description = "MySQL version (e.g., MYSQL_8_0)"
  type        = string
}

variable "sql_instance_disk_size" {
  description = "Disk size for the Cloud SQL instance in GB"
  type        = number
}

variable "availability_type" {
  description = "ZONAL or REGIONAL"
  type        = string
}

variable "instance_id" {
  description = "Cloud SQL instance ID"
  type        = string
}

variable "project_id" {
  description = "The GCP project ID where resources will be created"
  type        = string
}

variable "tier" {
  description = "Machine tier (e.g., db-f1-micro)"
  type        = string
}

variable "db_name" {
  description = "Name of the database to create"
  type        = string
}

variable "db_user" {
  description = "Database username"
  type        = string
}

variable "db_password" {
  description = "Password for the database user"
  type        = string
  sensitive   = true
}
