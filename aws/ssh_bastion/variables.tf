data "aws_availability_zones" "available" {}

data "aws_ami" "bastion" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Bastion_AMI_built_with_Packer*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

locals {
  num_azs = length(data.aws_availability_zones.available.names)
}

variable "public_subnet_ids" {
  description = "A list of public subnet IDs."
  type        = "list"
}

variable "ec2_key_pair" {
  description = "The AWS Key Pair for accessing hosts."
}

variable "env_name" {
  description = "The name of the environent we're building."
}

variable "vpc_id" {
  description = "ID of the target VPC."
}
