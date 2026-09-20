# M8: the output a root resource's attribute reads.
output "bucket_arn" {
  value = aws_s3_bucket.records.arn
}
