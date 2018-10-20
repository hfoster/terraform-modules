#Datapoints
provider "aws" {
  region = "${var.aws_region}"
}

terraform {
  backend "s3" {}
}

data "aws_availability_zones" "available" {}

data "aws_ami" "bastion" {
  most_recent = true

  filter {
    name   = "name"
    values = ["CentOS Linux 7*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
