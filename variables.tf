variable "aws_region" {
  description = "The AWS region to create things in"
  default     = "eu-west-2"
}

variable "vpc_cidr_block" {
  description = "The base CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "ec2_key_pair" {
  description = "The AWS Key Pair for accessing hosts"
  default     = "eu-west-2-test.key"
}
