terraform {
   #  cloud {
   # organization = "Manik8286"

    #workspaces {
    #  name = "terra-house-1"
    #}
  #}
  
  required_providers {

  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "Manik8286"
#    workspaces {
 #     name = "terra-house-1"
  #  }
  #}
 

    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
        aws = {
      source = "hashicorp/aws"
      version = "5.18.1"
    }
  }
}

provider "random" {
  # Configuration options
}
