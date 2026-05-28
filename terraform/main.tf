provider "aws" {
  region = "ap-southeast-1"
}

resource "random_id" "bucket_suffix" {
  byte_length = 5
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "vault-demo-bucket-${random_id.bucket_suffix.hex}"
}
