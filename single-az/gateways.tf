#Internet Gateway and NAT Gateways
resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.main.id}"

  tags {
    Name = "${var.env_name}-igw"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = "${aws_eip.nat_ip.id}"
  subnet_id     = "${aws_subnet.public.id}"

  tags {
    Name = "${var.env_name}-nat-gateway"
  }
}
