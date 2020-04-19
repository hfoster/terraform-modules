data "aws_availability_zones" "available" {}

locals {
  num_azs = length(data.aws_availability_zones.available.names)
}

variable "vpc_id" {
  description = "ID of the target Internet Gateway"
  type        = "string"
}

variable "igw_id" {
  default = "ID of the target Internet Gateway"
  type    = "string"
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = "list"
}
