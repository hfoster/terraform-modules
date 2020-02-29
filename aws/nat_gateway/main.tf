resource "aws_nat_gateway" "default" {
  count         = local.num_azs
  allocation_id = aws_eip.nat_ip.*.id[count.index]
  subnet_id     = var.public_subnet_ids[count.index]

  tags {
    Name = join("-", [var.env_name, "nat", "gateway", count.index])
  }
}

resource "aws_eip" "nat_ip" {
  count = local.num_azs
  vpc   = true

  tags {
    Name = join("-", [var.env_name, "nat", "ip", count.index])
  }
}
