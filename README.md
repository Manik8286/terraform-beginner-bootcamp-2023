# Terraform Beginner Bootcamp 2023

## Semantic Versioning :mage:

This project is going to utilize semantic versioning for its tagging. [semver.org][def]

The General format:

  **MAJOR.MINOR.PATCH**, eg. `1.0.1`
- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes


[def]: https://semver.org

## Install the Terraform CLI

[Install Terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

## Gitpod Task
[Gitpod Task](https://www.gitpod.io/docs/configure/workspaces/tasks)

### Working Env Vars

#### env command
we can list out all Environment Varilbes using `env` command

we can filter specific env cars usingg grep eg., `env | grep host`

#### Setting and Unsetting Env Vars

In the terninal we can set using `export HELLO='World'`

In the terminal we unset using `unset HELLO`

we can set an env var tempararily when just running a command
```sh
HELLO='World' ./bin/print-messgae
```
Within a bash script we can set env without writing export eg

```sh
#!usr/bin/env bash

HELLO='world'

echo $HELLO
```

## Printing Vars

We cam Print an env var using echo eg. `echo $HELLO`

### Scoping of Env Vars

when you open up new bash terminals in VScode it will not  be aware  of env vars  that you  have  set in another window.

If you want to Env Vars to persists across all future bash terminals that are open you need to set env vars in your bash profiles eg. `.bash_profile`

#### Persisting Env Vars in Gitpod
 
We can persist env vars into gitpod by storing them in Gitpod Secerts Storage.

```
gp env HELLO='world'
```

All future workspaces launched wil set the env vars for all bash terminals opened in those workspaces.

You can also set env vars in the `.gitpod.yml` but this can only contain non-senstive env vars.


### AWS CLI Installation

AWS CLI is installed for the project via the bash script [`./bin/install-aws-cli`](./bin/install-aws-cli.sh)

[AWS CLI Installation](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

[AWS CLI Env Vars](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html)

We'll need to generate AWS CLI Credits from IAM User in AWS Console

We can check if the AWS Cred is configured  correctly by running for command:

```sh 
aws sts get-caller-identity
```
if it is successful you should see a json payload return that looks like this:

```json
{
    "UserId": "AIDAYASLEX6CNREHH5AA6",
    "Account": "000000000000",
    "Arn": "arn:aws:iam::000000000000:user/manikandan-terraform"
}
```

## Terraform Basic

### Terraform Registry

Terrform sources their providers and modules from the Terraform registry which located at (https://registry.terraform.io/)[registry.terraform.io]

- **Providers** is an interface to APIs that will allow to create resources in terraform.
- **Modules** are a way to make large amount of terraform code modular, protable and sharable. 

(Random Provider)[https://registry.terraform.io/providers/hashicorp/random/latest/docs]

### Terrform Console

we can see a list of all the Terrform commands by simply typing `terraform`

### Terraform init

At the start of a new terraform project. we will run `terraform init` to download the binaries for the project that we'll use in this project.

### Terraform plan

`terraform plan`
This will generate out a changeset, about the state of our Infra and what will be changed.

we can output this changeset ie. "plan" to be passed to an apply, but oftehn you can just ignore outputting.

### Terraform apply

`terraform apply`

This will run a plan and pass the changeset to be execute by terraform. Apply should prompt the confirmation "Yes or no"

if we want to approve automatically provide the auto approve flag `terraform apply --auto-approve` command to be execute. 

### Terraform Lock Files
 
 `.terraform.lock.hcl` contains the locked versioniong for the providers or modules that should be used with this project

 The Terraform Lock File **should not be committed** to your Version Control System (VSC)
  
 This file can contain sensentive data.

 If you lose this file, you lose knowning the state of your infra.

 `.terraform.tfstate.backup` is the previous state file state.

 `.terraform` directory contain the terrform provider files
### Terraform State Files

`.terraform.tfstate` contain information about the current state of your infra.


## AWS S3 Bucket

### S3 Bucket Name standard
(AWS S3 Naming)[https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html?icmpid=docs_amazons3_console]

#### Terraform Destroy

`terraform destory`
This command will destory created service

#### Issues with Terraform cloud Login and Gitpod workspace

When attempting to run `terraform login` it will launch bash a wiswig view to generate a token. However it does not work excepted in Gitpod VsCode in the browser.

The workaroung is manually generate a token in Terraform Cloud
```
https://app.terraform.io/app/settings/tokens?source=terraform-login
```
Then create a file Manually here:
```
touch /home/gitpod/.terraform.d/credentials.tfrc.json
open /home/gitpod/.terraform.d/credentials.tfrc.json
```
Provide the below code(Replace the your token in the file):

```json
{
  "credentials": {
    "app.terraform.io": {
      "token": "YOUR-TOKEN-CODE"
    }
  }
}
```