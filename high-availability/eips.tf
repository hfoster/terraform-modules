#Elastic IP addresses
resource "aws_eip" "nat_ip" {
  count = "${length(data.aws_availability_zones.available.names)}"
  vpc   = true

  tags {
    Name = "nat-ip-${count.index}"
  }
}
