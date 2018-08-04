#Elastic IP addresses
resource "aws_eip" "nat_ip1" {
  vpc = true

  tags {
    Name = "nat-ip-1"
  }
}

resource "aws_eip" "nat_ip2" {
  vpc = true

  tags {
    Name = "nat-ip-2"
  }
}

resource "aws_eip" "nat_ip3" {
  vpc = true

  tags {
    Name = "nat-ip-3"
  }
}
