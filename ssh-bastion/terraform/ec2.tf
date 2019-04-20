resource "aws_instance" "bastion" {
  count                  = "${length(data.aws_availability_zones.available.names)}"
  ami                    = "${data.aws_ami.bastion.id}"
  instance_type          = "t2.nano"
  availability_zone      = "${data.aws_availability_zones.available.names[count.index]}"
  key_name               = "${var.ec2_key_pair}"
  subnet_id              = "${var.public_subnet_ids[count.index]}"
  vpc_security_group_ids = ["${aws_security_group.bastion.id}"]

  root_block_device {
    delete_on_termination = true
  }

  tags {
    Name = "${var.env_name}-ssh-bastion-${count.index}"
  }
}

resource "aws_eip_association" "bastion" {
  count         = "${length(data.aws_availability_zones.available.names)}"
  instance_id   = "${aws_instance.bastion.*.id[count.index]}"
  allocation_id = "${aws_eip.bastion_ip.*.id[count.index]}"
}
