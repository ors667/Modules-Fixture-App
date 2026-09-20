# M7 (root side of the root/module twin): the same kind and name is declared in
# ../../modules/records/main.tf and in Modules-Fixture-Platform/modules/records/main.tf.
resource "aws_s3_bucket" "records" {
  bucket = "modfix-${var.environment}-records"
}

# M6: the root's own bucket SATISFIES "must have versioning enabled". The module's does not.
resource "aws_s3_bucket_versioning" "records" {
  bucket = aws_s3_bucket.records.id
  versioning_configuration {
    status = "Enabled"
  }
}
