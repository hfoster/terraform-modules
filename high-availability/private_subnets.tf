#Private Subnets
locals {
  num_azs = "${length(data.aws_availability_zones.available.names)}"
}

resource "aws_subnet" "private" {
  count             = "${length(data.aws_availability_zones.available.names)}"
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "10.0.${count.index + local.num_azs}.0/24"
  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"

  tags {
    Name = "private-subnet-${count.index}"
  }
}

output "private_subnet_ids" {
  value = ["${aws_subnet.private.*.id}"]
}
