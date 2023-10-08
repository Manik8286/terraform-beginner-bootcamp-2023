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

[Standard Module Structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure)

## Terraform and Variables

### Terraform Cloud Variables
- Environment Variables - Set in your bash terminals 
- Terraform Variables - Normally its sets via .tfvars file

we can set the terraform cloud variable as senstive to hide the Keys

### Loading Terraform Variables

[Terraform Variables](https://developer.hashicorp.com/terraform/language/values/variables)
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

## Dealing with Configuration Drift

## What happen if we lose our state file?

If we lose the statefile, you most likely have to tear down all your cloud infra manually.

You can use terraform  port but it won't for all cloud resources. You need check the terraform provider's documentation for which resources support import. 

### Fix missing Resource with Terraform Import

`terraform import aws_s3_bucket.bucket bucket_name`

[Terraform Import](https://developer.hashicorp.com/terraform/cli/import)

[AWS S3 Bucket import](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#import)


### Terraform Import

if someone goes and delete or modifies cloud resource manually through clickops

if we run `Terraform plan` is with attempt to put our infra back into the expected state fixing configuration Drift

## Fix using Terraform Refresh

```sh
terraform apply -refresh-only -auto-approve
```

## Terraform Modules

### Terraform Module structure

Its recommend to place module in a `module` directory when locally developing modules but you can name it whatever you like. 

### Passing inpur variables

We can pass the input variables to our module.
The module has to declare the terraform variables in its own variables

``` terraform
module "terrahouse_aws"{
source = "./modules/terrahouse_aws/varibles.tf"
user_uuid = var.user_uuid
bucket_name = var.bucket_name
}

```

### Modules Sources

Using the source we can import the module from various location eg:
- locally
- Github
- Terraform Registry 

``` terraform
module "terrahouse_aws"{
source = "./modules/terrahouse_aws/varibles.tf"
}

```
[Terraform Modules](https://developer.hashicorp.com/terraform/language/modules)




