# # variable "access_key" {}

# # variable "secret_key" {} 
   
# # variable "region" {}

# # variable "access_creds" {
# #     type = map
# #     default = {
# #       access_key = "AKIA2AON6PJFPLA5LVHI"
# #       secret_key = "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"
# #     }
# # }

# # variable "process_creds" {
# #     type = map
# #     default = {
# #         access_key = "AKIA2AON6PJFPLA5LVHI"
# #         secret_key = "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"
# #     }
# # }

# variable "account_map" { 
#     type = map
#     default = {
#         access = "bala_ac"
#         # processing = "process_creds"
#     }
# }
# variable "bala_ac" {}

# provider "aws" {
#   access_key = "${var.account_map.access.access_key}"
#   secret_key = "${var.account_map.access.secret_key}"
# }




variable "aws_accounts" {
  type = map(object({
    access_key = string
    secret_key = string
    region     = string
  }))
}

variable "account_map" { 
    type = map
    default = {
       access = "sameer"
       processing = "bala"
    }
}

variable "acc_name" {}

variable "acc_name_2" {}