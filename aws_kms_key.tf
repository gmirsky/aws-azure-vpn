resource "aws_kms_key" "this" {
  description              = "${var.aws_cloudwatch_log_group_name} Log Group KMS key"
  deletion_window_in_days  = 7
  key_usage                = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  enable_key_rotation      = true
  tags                     = module.aws_user_tags.tags
}
#
