resource "google_sql_database_instance" "mysql" {
  project          = var.project_id
  name             = var.instance_id
  database_version = var.db_version 
  region           = var.region

  settings {
    tier              = var.tier
    availability_type = var.availability_type
    disk_type         = "PD_SSD"
    disk_size         = var.sql_instance_disk_size

    ip_configuration {
      ipv4_enabled = true

      authorized_networks {
        name  = "all-open"
        value = "0.0.0.0/0"
      }
    }

    backup_configuration {
      enabled = false
    }
  }

  deletion_protection = false
}

resource "google_sql_database" "db" {
  name     = var.db_name
  instance = google_sql_database_instance.mysql.name
  project  = var.project_id
}

resource "google_sql_user" "db_user" {
  name     = var.db_user
  instance = google_sql_database_instance.mysql.name
  password = var.db_password
  project  = var.project_id
}

