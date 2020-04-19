resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = "default"
  enable_dns_support   = var.dns_support
  enable_dns_hostnames = var.dns_hostnames

  tags {
    Name = join("-", [var.env_name, "vpc"])
  }
}
