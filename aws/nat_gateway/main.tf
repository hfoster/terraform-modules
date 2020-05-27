resource "aws_nat_gateway" "nat_gateway" {
  count         = local.num_azs
  allocation_id = aws_eip.nat_ip.[count.index].id
  subnet_id     = var.public_subnet_ids[count.index]
}

resource "aws_eip" "nat_ip" {
  count = local.num_azs
  vpc   = true
}
