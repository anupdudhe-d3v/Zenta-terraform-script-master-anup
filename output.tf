output "vm1_public_ip" {
  description = "Public IP of VM1"
  value       = module.vm1.instance_public_ips[0]
}

output "vm2_public_ip" {
  description = "Public IP of VM2"
  value       = module.vm2.instance_public_ips[0]
}

output "cloudsql_connection" {
  value = module.cloudsql.connection_name
}

output "frontend_url" {
  value = module.cloudrun.frontend_url
}

output "backend_url" {
  value = module.cloudrun.backend_url
}

output "bigquery_dataset_id" {
  value = module.bigquery.dataset_id
}


output "project_id" {
  value = module.new_project.project_id
}

output "project_number" {
  value = module.new_project.project_number
}



