variable "database_name" {
    type = string
    default = "glue_database"
}

variable "crawler_name" {
    type = string
    default = "glue_crawler"
}

variable "s3_path" {
    type = string
    default = "s3://temps3bucketsam"
}

variable "crawler_role" {
    type = string
    default = "arn:aws:iam::688163551818:role/service-role/AWSGlueServiceRole-GlueCrawler"
}
