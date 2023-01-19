resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id
  tags = merge(
    module.aws_user_tags.tags,
    {
      Name = "internet_gateway"
    }
  )
}
#