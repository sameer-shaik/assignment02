terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
    }
  }
}

# provider "aws" {
#     region                  = var.aws_accounts[var.acc_name].region
#     access_key              = var.aws_accounts[var.acc_name].access_key
#     secret_key              = var.aws_accounts[var.acc_name].secret_key
#     # alias = "bala_provider"
# #   shared_credentials_file = "~/.aws/credentials"

# }

resource "aws_s3_bucket" "s3bucket" {
    bucket = var.bucket
}

resource "aws_s3_object" "this" {
    bucket = aws_s3_bucket.s3bucket.bucket
    etag = filemd5("${path.module}/${var.key}")
    key = var.key
    source = "${path.module}/${var.key}"
}
