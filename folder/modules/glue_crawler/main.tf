resource "aws_glue_crawler" "lakeformation_db_crawler" {
    database_name = var.database_name
    name = var.crawler_name
    role = var.crawler_role
    s3_target {
        path = var.s3_path
    }
}