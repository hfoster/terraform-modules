resource "aws_eip" "bastion_ip" {
  count = "${length(data.aws_availability_zones.available.names)}"
  vpc   = true

  tags {
    Name = "${var.env_name}-bastion-ip-${count.index}"
  }
}
