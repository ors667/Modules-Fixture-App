# The negative control: an SNS topic declared ONLY here, encrypted by no KMS key.
# It must read identically before and after the modules work.
resource "aws_sns_topic" "alerts" {
  name = "modfix-${var.environment}-alerts"
}
