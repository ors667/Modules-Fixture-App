# M1: one local call, to a folder OUTSIDE the selected folder (envs/production).
module "records" {
  source        = "../../modules/records"
  bucket_prefix = "modfix-${var.environment}"
}

# M2 (plain): the SAME folder called a second time with a different argument.
module "records_archive" {
  source        = "../../modules/records"
  bucket_prefix = "modfix-${var.environment}-archive"
}

# M2 (for_each): the same folder again, fanned out over a set.
module "records_fanout" {
  source        = "../../modules/records"
  for_each      = toset(["eu", "us"])
  bucket_prefix = "modfix-${var.environment}-${each.key}"
}

# M9: a call that creates NOTHING.
module "records_disabled" {
  source        = "../../modules/records"
  count         = 0
  bucket_prefix = "modfix-${var.environment}-disabled"
}
