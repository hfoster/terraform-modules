#Elastic IP addresses
resource "aws_eip" "nat_ip" {
  vpc   = true

  tags {
    Name = "${var.env_name}-nat-ip"
  }
}

resource "aws_eip" "bastion_ip" {
  vpc   = true

  tags {
    Name = "${var.env_name}-bastion-ip"
  }
}
