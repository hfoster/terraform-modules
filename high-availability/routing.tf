#Subnet routing rules
resource "aws_route_table" "private_routing" {
  count  = "${length(data.aws_availability_zones.available.names)}"
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat.*.id[count.index]}"
  }
}

resource "aws_route_table_association" "pri" {
  count          = "${length(data.aws_availability_zones.available.names)}"
  subnet_id      = "${aws_subnet.private.*.id[count.index]}"
  route_table_id = "${aws_route_table.private_routing.*.id[count.index]}"
}

resource "aws_route_table" "public_routing" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }
}

resource "aws_route_table_association" "pub" {
  count          = "${length(data.aws_availability_zones.available.names)}"
  subnet_id      = "${aws_subnet.public.*.id[count.index]}"
  route_table_id = "${aws_route_table.public_routing.id}"
}
