resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
}

# Enable Versioning on Source Bucket
resource "aws_s3_bucket_versioning" "source" {

  bucket = aws_s3_bucket.s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

#Enble Server Side Encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "source" {

  bucket     = aws_s3_bucket.s3_bucket.bucket
  depends_on = [aws_kms_key.S3EncryptionKey]

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.S3EncryptionKey.arn
      sse_algorithm     = "aws:kms"
    }
  }
}

# The DynamoDb table that locks the state file
#
resource "aws_dynamodb_table" "terraform-state" {
  name           = var.dynamodb_table_name
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}