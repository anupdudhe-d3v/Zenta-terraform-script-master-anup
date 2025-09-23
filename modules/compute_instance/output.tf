output "instance_names" {
  description = "Names of the VM instances"
  value       = [for vm in google_compute_instance.vm : vm.name]
}

output "instance_self_links" {
  description = "Self-links of the VM instances"
  value       = [for vm in google_compute_instance.vm : vm.self_link]
}

output "instance_public_ips" {
  description = "Public IPs of the VM instances"
  value       = [
    for vm in google_compute_instance.vm :
    vm.network_interface[0].access_config[0].nat_ip
  ]
}
