#Private Subnets
resource "aws_subnet" "private" {
  count             = "${length(data.aws_availability_zones.available.names)}"
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.2.${count.index}.0/24"
  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"

  tags {
    Name = "private-subnet-${count.index}"
  }
}

output "private_subnet_ids" {
  value = ["${aws_subnet.private.*.id}"]
}
