data "aws_availability_zones" "available" {}

locals {
  num_azs = length(data.aws_availability_zones.available.names)
}

variable "env_name" {
  description = "The name of the target environment."
  type        = "string"
}

variable "vpc_id" {
  description = "ID of the target VPC."
  type        = "string"
}

variable "vpc_cidr" {
  description = "CIDR block of host VPC."
  type        = "string"
}

variable "subnet_newbits" {
  description = "Offset from VPC CIDR netmask for subnet CIDR netmask."
  default     = 8
  type        = "number"
}

variable "offset" {
  description = "Set >= 1 to add more than one set of subnets."
  default     = 0
  type        = "number"
}
