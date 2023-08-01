provider "aws" {
    profile = var.account_map["access"]
    alias = "access_provider"
}

provider "aws" {
    profile = var.account_map["processing"]
    alias = "process_provider"
}

variable "bucket_name" {}

# UNBLOCK code for 1st version *******************************
# provider "aws" {
#     region                  = var.aws_accounts[var.acc_name].region
#     access_key              = var.aws_accounts[var.acc_name].access_key
#     secret_key              = var.aws_accounts[var.acc_name].secret_key
#     alias = "access_provider"
# }

# provider "aws" {
#     region                  = var.aws_accounts[var.acc_name_2].region
#     access_key              = var.aws_accounts[var.acc_name_2].access_key
#     secret_key              = var.aws_accounts[var.acc_name_2].secret_key
#     alias = "process_provider"
# #   shared_credentials_file = "~/.aws/credentials"

# }

# *************************************************


module "glue_database"{

    source = "../../../modules/glue_database"
    database_name = join("-", [element(split("/", path.cwd), length(split("/", path.cwd))-1), "glue_database_one", 
    element(split("/", path.cwd), length(split("/", path.cwd))-2)])
    providers = {
        aws = aws.access_provider 
    }

}

module "s3_bucket" {

    source = "../../../modules/s3_bucket"
    bucket_name = join("-", [element(split("/", path.cwd), length(split("/", path.cwd))-1), "sss4one", 
    element(split("/", path.cwd), length(split("/", path.cwd))-2)])
    bucket = var.bucket_name
    providers = {
        aws = aws.process_provider
    }

}


