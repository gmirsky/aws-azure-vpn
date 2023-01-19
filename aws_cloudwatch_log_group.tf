resource "aws_cloudwatch_log_group" "this" {
  name              = var.aws_cloudwatch_log_group_name
  skip_destroy      = false
  retention_in_days = 90
  kms_key_id        = aws_kms_key.this.key_id
  tags              = module.aws_user_tags.tags
}
#