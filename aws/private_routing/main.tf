resource "aws_route_table" "private" {
  count  = local.num_azs
  vpc_id = var.vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.nat_gateway_ids[count.index]
  }
}

resource "aws_route_table_association" "private" {
  count          = local.num_azs
  subnet_id      = var.private_subnet_ids[count.index]
  route_table_id = aws_route_table.private.[count.index].id
}
