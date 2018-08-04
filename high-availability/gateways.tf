#Internet Gateway and NAT Gateways
resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.main.id}"

  tags {
    Name = "test-igw"
  }
}

resource "aws_nat_gateway" "nat1" {
  allocation_id = "${aws_eip.nat_ip1.id}"
  subnet_id     = "${aws_subnet.public1.id}"

  tags {
    Name = "nat-gateway-1"
  }
}

resource "aws_nat_gateway" "nat2" {
  allocation_id = "${aws_eip.nat_ip2.id}"
  subnet_id     = "${aws_subnet.public2.id}"

  tags {
    Name = "nat-gateway-2"
  }
}

resource "aws_nat_gateway" "nat3" {
  allocation_id = "${aws_eip.nat_ip3.id}"
  subnet_id     = "${aws_subnet.public3.id}"

  tags {
    Name = "nat-gateway-3"
  }
}
