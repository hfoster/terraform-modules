#SSH Bastion EC2 instances
resource "aws_instance" "bastion" {
  ami                    = "${data.aws_ami.bastion.id}"
  instance_type          = "t2.nano"
  availability_zone      = "${data.aws_availability_zones.available.names[0]}"
  key_name               = "${var.ec2_key_pair}"
  subnet_id              = "${aws_subnet.public.id}"
  vpc_security_group_ids = ["${aws_security_group.bastion.id}"]

  root_block_device {
    delete_on_termination = true
  }

  tags {
    Name = "${var.env_name}-ssh-bastion"
  }
}

resource "aws_eip_association" "bastion" {
  instance_id   = "${aws_instance.bastion.id}"
  allocation_id = "${aws_eip.bastion_ip.id}"
}
