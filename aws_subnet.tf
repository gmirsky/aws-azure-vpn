resource "aws_subnet" "subnet_1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.aws_subnet_cidr_block
  tags = merge(
    module.aws_user_tags.tags,
    {
      Name = "subnet_1"
    }
  )
}