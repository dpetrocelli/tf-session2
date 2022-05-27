#Create a Multi Region Key
resource "aws_kms_key" "S3EncryptionKey" {
  description             = "S3 Encryption Key"
  deletion_window_in_days = 15
  multi_region            = true

}

/* #Source Key Alias
resource "aws_kms_alias" "S3EncryptionKey_Alias" {

  name          = "alias/S3EncryptionKey-${var.aws_region}"
  target_key_id = aws_kms_key.S3EncryptionKey.key_id
} */
