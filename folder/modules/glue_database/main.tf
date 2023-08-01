terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
    }
  }
}

resource "aws_glue_catalog_database" "lakeformation_db" {
    name = var.database_name
}