resource "aws_route_table_association" "route_table_association" {
  subnet_id      = aws_subnet.subnet_1.id
  route_table_id = aws_route_table.route_table.id
}
#