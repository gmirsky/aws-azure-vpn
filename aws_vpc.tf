resource "aws_vpc" "vpc" {
  cidr_block = var.aws_cidr_block
  tags = merge(
    module.aws_user_tags.tags,
    {
      Name = "vpn-vpc"
    }
  )
}
