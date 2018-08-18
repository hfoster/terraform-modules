#Public Subnets
data "aws_availability_zones" "available" {}

resource "aws_subnet" "public" {
  count                   = "${length(data.aws_availability_zones.available.names)}"
  vpc_id                  = "${aws_vpc.main.id}"
  cidr_block              = "10.0.${count.index}.0/24"
  availability_zone       = "${data.aws_availability_zones.available.names[count.index]}"
  map_public_ip_on_launch = true

  tags {
    Name = "public-subnet-${count.index}"
  }
}

output "public_subnet_ids" {
  value = ["${aws_subnet.public.*.id}"]
}
