variable "vpc_cidr_block" {
  description = "The base CIDR block for the VPC."
}

variable "aws_region" {
  description = "Our target region."
}

variable "env_name" {
  description = "The name of the environent we're building."
}
