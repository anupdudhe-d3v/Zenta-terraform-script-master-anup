project_id = "Dummy_Project"
project_name = "Dummy_Project"
region     = "us-central1"
zone       = "us-central1-a"

vpc_name             = "test-vpc"
subnet_ip_cidr_range = "10.0.0.0/24"

instance_name = "test-vm"
machine_type  = "e2-micro"
boot_image    = "debian-cloud/debian-12"
disk_size_gb  = 10
disk_type     = "pd-standard"

db_instance_name       = "test-mysql"
db_version             = "MYSQL_8_0"
db_tier                = "db-f1-micro"
sql_instance_disk_size = 10
availability_type      = "ZONAL"
db_name                = "appdb"
db_user                = "appuser"
db_password            = "password123"

fe_image              = "gcr.io/my-existing-project-id/frontend:latest"
be_image              = "gcr.io/my-existing-project-id/backend:latest"
allow_unauthenticated = true

dataset_id   = "pulse_test_dataset"
dataset_name = "Pulse Test Dataset"




# Organization or folder context
org_id          = "296237182454"
billing_account = "000000-111111-222222"



# List of APIs to enable
enable_apis = [
  "compute.googleapis.com",
  "iam.googleapis.com",
  "cloudresourcemanager.googleapis.com",
  "servicenetworking.googleapis.com",
  "storage.googleapis.com"
]