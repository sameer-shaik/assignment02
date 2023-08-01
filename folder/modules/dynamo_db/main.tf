resource "aws_dynamodb_table" "backend_dynamo_db" {
  name         = var.db_table_name
  billing_mode = var.billing_mode #"PROVISIONED"
  hash_key     = var.hash_key     #"LockId"
  attribute {
    name = "LockID" #"LockId"
    type = var.attr_type #"S"
  }
#   tags = merge({ "ResourceName" = var.db_table_name }, var.tags)
}