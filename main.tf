terraform {
   #  cloud {
   # organization = "Manik8286"

    #workspaces {
    #  name = "terra-house-1"
    #}
  #}
  
  #required_providers {

  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "Manik8286"
#    workspaces {
 #     name = "terra-house-1"
  #  }
  #}
 

    #aws = {
     # source = "hashicorp/aws"
     # version = "5.18.1"
    #}
  #}
}

module "terrahouse_aws"{
source = "./modules/terrahouse_aws"
user_uuid = var.user_uuid
bucket_name = var.bucket_name
}
