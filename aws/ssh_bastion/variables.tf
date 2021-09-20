data "aws_availability_zones" "available" {}

locals {
  num_azs = length(data.aws_availability_zones.available.names)
}

variable "public_subnet_ids" {
  description = "A list of public subnet IDs."
  type        = list(string)
}

variable "bastion_ami" {
  type = string
}

variable "ec2_key_pair" {
  description = "The AWS Key Pair for accessing hosts."
  type        = string
}

variable "env_name" {
  description = "The name of the environent we're building."
  type        = string
}

variable "vpc_id" {
  description = "ID of the target VPC."
  type        = string
}
