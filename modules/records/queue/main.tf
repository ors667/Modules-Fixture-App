# M6 (satisfaction): the only SQS queue in the estate, two module levels down.
resource "aws_sqs_queue" "records" {
  name = var.name
}
