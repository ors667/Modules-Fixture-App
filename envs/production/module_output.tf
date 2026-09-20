# M8: a root resource whose attribute reads a module OUTPUT. It needs modules.tf.
resource "aws_s3_bucket_policy" "records" {
  bucket = aws_s3_bucket.records.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { Service = "s3.amazonaws.com" }
      Action    = "s3:PutObject"
      Resource  = module.records.bucket_arn
    }]
  })
}
