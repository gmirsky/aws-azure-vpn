resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.vpc.id
  tags = merge(
    module.aws_user_tags.tags,
    {
      Name = "route_table"
    }
  )
}