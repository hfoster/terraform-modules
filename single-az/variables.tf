variable "vpc_cidr_block" {
  description = "The base CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "aws_region" {
  description = "Our target region."
  default     = "eu-west-2"
}

variable "ec2_key_pair" {
  description = "The AWS Key Pair for accessing hosts. Define at plan time with the -var flag"
}

variable "env_name" {
  description = "The name of the environent we're building. Define at plan time with the -var flag"
}
