terraform {
    required_version = "~> 1.5.3"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.9.0"
        }
    }
    backend "s3" {
        bucket = "backendstatefilehandlerbucket"
        key = "state/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "backend_ddb"
    }
}

