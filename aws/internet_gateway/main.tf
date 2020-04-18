resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags {
    Name = join("-", [var.env_name, "igw"])
  }
}
