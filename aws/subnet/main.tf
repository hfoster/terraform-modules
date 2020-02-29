resource "aws_subnet" "default" {
  count             = local.num_azs
  vpc_id            = var.vpc_id
  cidr_block        = join(".", ["10", "0", count.index + var.offset, "0/24"])
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags {
    Name = join("-", [var.env, "subnet", count.index + var.offset])
  }
}
