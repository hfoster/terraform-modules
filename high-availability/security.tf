#Security Groups
resource "aws_security_group" "web" {
  vpc_id                 = "${aws_vpc.main.id}"
  revoke_rules_on_delete = true

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "ssh_jump" {
  vpc_id                 = "${aws_vpc.main.id}"
  revoke_rules_on_delete = true

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${aws_subnet.private1.cidr_block}", "${aws_subnet.private2.cidr_block}", "${aws_subnet.private3.cidr_block}"]
  }
}

resource "aws_security_group" "ssh_in" {
  vpc_id                 = "${aws_vpc.main.id}"
  revoke_rules_on_delete = true

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${aws_subnet.public1.cidr_block}", "${aws_subnet.public2.cidr_block}", "${aws_subnet.public3.cidr_block}"]
  }
}

output "web_security_group_id" {
  value = "${aws_security_group.web.id}"
}

output "ssh_jump_security_group_id" {
  value = "${aws_security_group.ssh_jump.id}"
}

output "ssh_in_security_group_id" {
  value = "${aws_security_group.ssh_in.id}"
}
