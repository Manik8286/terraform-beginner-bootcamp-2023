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

