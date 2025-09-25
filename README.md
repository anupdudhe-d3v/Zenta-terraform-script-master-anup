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
