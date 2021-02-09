resource "aws_instance" "vm" {
  ami                         = var.aws_ami
  associate_public_ip_address = var.associate_public_ip_address
  instance_type               = var.aws_instance_type_id
  key_name                    = var.aws_key_name
  subnet_id                   = var.aws_subnet_id
  vpc_security_group_ids      = [aws_security_group.icmp.id]
  tags = merge(
    var.aws_user_tags,
    {
      Name = "aws_azure_vpn_test_server"
    }
  )
}
