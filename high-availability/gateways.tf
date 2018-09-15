#Internet Gateway and NAT Gateways
resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.main.id}"

  tags {
    Name = "${var.env_name}-igw"
  }
}

resource "aws_nat_gateway" "nat" {
  count         = "${length(data.aws_availability_zones.available.names)}"
  allocation_id = "${aws_eip.nat_ip.*.id[count.index]}"
  subnet_id     = "${aws_subnet.public.*.id[count.index]}"

  tags {
    Name = "${var.env_name}-nat-gateway-${count.index}"
  }
}
