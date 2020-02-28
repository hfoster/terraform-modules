data "aws_availability_zones" "available" {}

locals {
  num_azs = length(data.aws_availability_zones.available.names)
}

variable "env_name" {
  description = "The name of the target environment."
}

variable "vpc_id" {
  description = "ID of the target VPC."
}

variable "offset" {
  description = "Set >= 1 to add more than one set of subnets."
  default = 0
}
