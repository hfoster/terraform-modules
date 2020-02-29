data "aws_availability_zones" "available" {}

locals {
  num_azs = length(data.aws_availability_zones.available.names)
}

variable "nat_gateway_ids" {
  description = "List of NAT Gateway IDs"
}

variable "vpc_id" {
  description = "ID of the target Internet Gateway"
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
}
