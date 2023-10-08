#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

resource "aws_s3_bucket" "website_bucket" {
  #https://docs.aws.amazon.com/console/s3/bucket-naming

  #bucket = random_string.bucket_name.result
  bucket = var.bucket_name

  tags = {

     UserUuid = var.user_uuid
  }
}