resource "aws_instance" "bastion" {
  count                  = local.num_azs
  ami                    = var.bastion_ami
  instance_type          = "t2.nano"
  availability_zone      = data.aws_availability_zones.available.names[count.index]
  key_name               = var.ec2_key_pair
  subnet_id              = var.public_subnet_ids[count.index]
  vpc_security_group_ids = [aws_security_group.bastion.id]

  root_block_device {
    delete_on_termination = true
  }

  tags {
    Name = join("-", [var.env_name, "ssh", "bastion", count.index])
  }
}

resource "aws_eip" "bastion" {
  count = local.num_azs
  vpc   = true

  tags {
    Name = join("-", [var.env_name, "bastion", "ip", count.index])
  }
}

resource "aws_eip_association" "bastion" {
  count         = local.num_azs
  instance_id   = aws_instance.bastion.*.id[count.index]
  allocation_id = aws_eip.bastion.*.id[count.index]
}
