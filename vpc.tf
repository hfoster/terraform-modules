#VPC
provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_vpc" "main" {
  cidr_block           = "${var.vpc_cidr_block}"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags {
    Name = "test-vpc"
  }
}

output "main_vpc_id" {
  value = "${aws_vpc.main.id}"
}
