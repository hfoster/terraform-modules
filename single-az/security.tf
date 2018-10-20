#Security Groups
resource "aws_security_group" "elb_security_group" {
  vpc_id                 = "${aws_vpc.main.id}"
  revoke_rules_on_delete = true
  name                   = "${var.env_name}-elb-security-group"
  description            = "Security Group for web traffic via ELB"

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
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "web" {
  vpc_id                 = "${aws_vpc.main.id}"
  revoke_rules_on_delete = true
  name                   = "${var.env_name}-web-security-group"
  description            = "Security Group for web traffic from ELB"
}

resource "aws_security_group_rule" "http_ingress" {
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  source_security_group_id = "${aws_security_group.elb_security_group.id}"
  security_group_id        = "${aws_security_group.web.id}"
}

resource "aws_security_group_rule" "all_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.web.id}"
}

resource "aws_security_group" "bastion" {
  vpc_id                 = "${aws_vpc.main.id}"
  revoke_rules_on_delete = true
  name                   = "${var.env_name}-bastion-security-group"
  description            = "Security Group for SSH traffic via bastion"

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
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "ssh" {
  vpc_id                 = "${aws_vpc.main.id}"
  revoke_rules_on_delete = true
  name                   = "${var.env_name}-ssh-security-group"
  description            = "Security Group for SSH traffic from the bastions"
}

resource "aws_security_group_rule" "ssh_ingress" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  source_security_group_id = "${aws_security_group.bastion.id}"
  security_group_id        = "${aws_security_group.ssh.id}"
}
