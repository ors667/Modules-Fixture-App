variable "environment" {
  type = string
}

resource "aws_ssm_parameter" "inline_flag" {
  name  = "/modfix/${var.environment}/inline"
  type  = "String"
  value = "on"
}
