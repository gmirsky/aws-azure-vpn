resource "aws_vpc" "vpc" {
  #checkov:skip=CKV2_AWS_12:Default security group omitted for test/demonstration purposes
  cidr_block = var.aws_cidr_block
  tags = merge(
    module.aws_user_tags.tags,
    {
      Name = "vpn-vpc"
    }
  )
}
