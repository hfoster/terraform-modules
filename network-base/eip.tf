resource "aws_eip" "nat_ip" {
  count = "${length(data.aws_availability_zones.available.names)}"
  vpc   = true

  tags {
    Name = "${var.env_name}-nat-ip-${count.index}"
  }
}
