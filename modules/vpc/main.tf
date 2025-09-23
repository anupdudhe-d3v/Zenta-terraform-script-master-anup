resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.vpc_name}-subnet"
  ip_cidr_range = var.subnet_ip_cidr_range
  region        = var.region
  network       = google_compute_network.vpc_network.id
  project       = var.project_id
}

resource "google_compute_firewall" "allow_all" {
  name    = "${var.vpc_name}-allow-all"
  network = google_compute_network.vpc_network.name
  project = var.project_id

  allow {
    protocol = "all"
  }

  source_ranges = ["0.0.0.0/0"]
}
