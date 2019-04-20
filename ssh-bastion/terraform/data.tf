provider "aws" {
  region = "${var.aws_region}"
}

data "aws_availability_zones" "available" {}

data "aws_ami" "bastion" {
  most_recent = true

  filter {
    name   = "name"
    values = ["CentOS Linux 7*"] #Change this
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
