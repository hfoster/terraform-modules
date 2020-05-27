resource "aws_subnet" "subnet" {
  count             = local.num_azs
  vpc_id            = var.vpc_id
  cidr_block        = cidrsubnet(var.vpc_cidr, var.subnet_newbits, count.index + var.offset)
  availability_zone = data.aws_availability_zones.available.names[count.index]
}
