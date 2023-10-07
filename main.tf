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

  tags = {

     UserUuid = var.user_uuid
  }
}