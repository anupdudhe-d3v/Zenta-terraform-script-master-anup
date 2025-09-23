variable "project_id" {
  type        = string
  description = "The ID of the GCP project where the VM will be created"
}

variable "zone" {
  type        = string
  description = "The zone in which to create the VM"
}

variable "instance_name" {
  type        = string
  description = "The name of the VM instance"
}

variable "machine_type" {
  type        = string
  description = "The machine type for the VM (e.g., e2-micro, n1-standard-1)"
}

variable "boot_image" {
  type        = string
  description = "The boot image to use for the VM (e.g., debian-cloud/debian-12)"
}

variable "disk_size_gb" {
  type        = number
  description = "Size of the boot disk in GB"
}

variable "disk_type" {
  type        = string
  description = "Type of the boot disk (e.g., pd-standard, pd-ssd)"
}

variable "network" {
  type        = string
  description = "The self-link of the VPC network to attach the VM to"
}

variable "subnetwork" {
  type        = string
  description = "The self-link of the subnetwork to attach the VM to"
}
