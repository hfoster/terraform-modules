resource "aws_security_group" "bastion" {
  vpc_id                 = "${var.vpc_id}"
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
  vpc_id                 = "${var.vpc_id}"
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
