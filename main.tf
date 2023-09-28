terraform {
  required_providers {
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

resource "random_string" "bucket_name" {
  lower = true
  upper = false
  length  = 32
  special = false
 
}
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

resource "aws_s3_bucket" "example" {
  #https://docs.aws.amazon.com/console/s3/bucket-naming

  bucket = random_string.bucket_name.result

}

output "random_bucket_name"{
    value = random_string.bucket_name.result
}