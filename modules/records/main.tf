# M7 (module side of the root/module twin): the same kind and name as the root's.
# M6 (violation): "must have versioning enabled" — no aws_s3_bucket_versioning here.
resource "aws_s3_bucket" "records" {
  bucket = "${var.bucket_prefix}-store"
}

# M3: a module calling a module.
module "queue" {
  source = "./queue"
  name   = "${var.bucket_prefix}-intake"
}
