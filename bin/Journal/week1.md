# Terraform Beginner Bootcamp 2023 - Week1

## Root Module Structure

Our root module structure is as follows:

```
PROJECT_ROOT/
│
├── main.tf          # everythink else.
├── variable.tf      # stores the structure of input variables.
├── terraform.tfvars # the data of variables we want to load into our terraform project
├── providers.tf     # defined required providers and their configuration.
├── outputs.tf       # Stores our outputs
└── README.md        # Required for root modules.
```

(Standard Module Structure)[https://developer.hashicorp.com/terraform/language/modules/develop/structure]

## Terraform and Variables

### Terraform Cloud Variables
- Environment Variables - Set in your bash terminals 
- Terraform Variables - Normally its sets via .tfvars file

we can set the terraform cloud variable as senstive to hide the Keys

### Loading Terraform Variables

(Terraform Variables)[https://developer.hashicorp.com/terraform/language/values/variables]
### Var flag
we can use the `-var` flag to set an input variable or override a variable  in the tfvars file eg. `terraform -var user_uuid="Userid"`

### var-file flag

- TODO: research the flag

### terraform.tfvars

This is the deafult file to load the terrform variables in blunk

### auto.tfvars

- TODO: research the flag

### order of terraform variables

- TODO: 
