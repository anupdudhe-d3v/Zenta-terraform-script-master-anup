### Terraform file structure and module hierarchy

```
.
├── main.tf
├── modules
│   ├── bigquery
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variable.tf
│   ├── cloudrun
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variable.tf
│   ├── cloudsql_mysql
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variable.tf
│   ├── compute_instance
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variable.tf
│   ├── project
│   │   ├── main.tf
│   │   ├── output.tf
│   │   └── variable.tf
│   └── vpc
│       ├── main.tf
│       ├── output.tf
│       └── variable.tf
├── output.tf
├── provider.tf
├── terraform.tfvars
└── variable.tf
```
### terraform lifecycle commands
```
#Initialize Directory
terraform init
```
### Format & Validate
```
terraform fmt
terraform validate
```
### Plan Changes
```
terraform plan
```
### Apply Configuration
```
terraform apply
terraform apply -auto-approve
```
### Inspect State
```
terraform show
terraform state list
terraform state show <resource_name>
```
### Destroy Infrastructure
```
terraform destroy
terraform destroy -auto-approve
```


Notes:

Terraform automatically loads terraform.tfvars or *.auto.tfvars.

You can also use environment variables: TF_VAR_<var>=<value>
