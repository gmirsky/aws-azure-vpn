resource "aws_instance" "vm" {
  #checkov:skip=CKV_AWS_88:Public IP is for test/demonstration server access without a VPN
  ami                         = var.aws_ami
  associate_public_ip_address = var.associate_public_ip_address
  instance_type               = var.aws_instance_type_id
  iam_instance_profile        = aws_iam_instance_profile.this.name
  metadata_options {
    http_endpoint = "disabled"
    #http_endpoint = "enabled"
    #http_tokens   = "required"
  }
  key_name  = var.aws_key_name
  subnet_id = var.aws_subnet_id
  vpc_security_group_ids = [
    aws_security_group.icmp.id
  ]
  ebs_optimized = true
  monitoring    = true
  root_block_device {
    encrypted = true
  }
  tags = var.aws_user_tags
}
#
