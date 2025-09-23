output "instance_name" {
  value = google_sql_database_instance.mysql.name
}

output "connection_name" {
  value = google_sql_database_instance.mysql.connection_name
}
