resource "aws_lakeformation_resource" "s3_bucket" {
    name = "arn:aws:s3:::${var.bucket}"
}