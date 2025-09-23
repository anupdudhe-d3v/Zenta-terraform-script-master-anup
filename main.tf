##########################################
# VPC
##########################################
module "vpc" {
  source               = "./modules/vpc"
  project_id           = module.new_project.project_id
  vpc_name             = var.vpc_name
  region               = var.region
  subnet_ip_cidr_range = var.subnet_ip_cidr_range
}

##########################################
# Compute Instances (2 VMs)
##########################################
module "vm1" {
  source        = "./modules/compute_instance"
  project_id    = module.new_project.project_id
  zone          = var.zone
  instance_name = "${var.instance_name}-1"
  machine_type  = var.machine_type
  boot_image    = var.boot_image
  disk_size_gb  = var.disk_size_gb
  disk_type     = var.disk_type
  network       = module.vpc.vpc_self_link
  subnetwork    = module.vpc.subnet_self_links[0]
}

module "vm2" {
  source        = "./modules/compute_instance"
  project_id    = module.new_project.project_id
  zone          = var.zone
  instance_name = "${var.instance_name}-2"
  machine_type  = var.machine_type
  boot_image    = var.boot_image
  disk_size_gb  = var.disk_size_gb
  disk_type     = var.disk_type
  network       = module.vpc.vpc_self_link
  subnetwork    = module.vpc.subnet_self_links[0]
}

##########################################
# Cloud SQL (MySQL)
##########################################
module "cloudsql" {
  source                 = "./modules/cloudsql_mysql"
  project_id             = module.new_project.project_id
  region                 = var.region
  instance_id            = var.db_instance_name
  db_version             = var.db_version
  tier                   = var.db_tier
  sql_instance_disk_size = var.sql_instance_disk_size
  availability_type      = var.availability_type
  db_name                = var.db_name
  db_user                = var.db_user
  db_password            = var.db_password
}

##########################################
# Cloud Run (Frontend + Backend)
##########################################
module "cloudrun" {
  source                = "./modules/cloudrun"
  project_id            = module.new_project.project_id
  region                = var.region
  fe_image              = var.fe_image
  be_image              = var.be_image
  allow_unauthenticated = var.allow_unauthenticated
}

##########################################
# BigQuery Dataset
##########################################
module "bigquery" {
  source       = "./modules/bigquery"
  project_id   = module.new_project.project_id
  dataset_id   = var.dataset_id
  dataset_name = var.dataset_name
  location     = var.region
}

###########################################
# Project Module
###########################################


module "new_project" {
  source          = "./modules/project"
  project_id      = var.project_id 
  project_name    = var.project_name
  org_id          = var.org_id
  billing_account = var.billing_account
  enable_apis = var.enable_apis
}
