variable "public_subnet_ids" {
  description = "A list of public subnet IDs."
  type        = "list"
}

variable "aws_region" {
  description = "Our target region."
}

variable "ec2_key_pair" {
  description = "The AWS Key Pair for accessing hosts."
}

variable "env_name" {
  description = "The name of the environent we're building."
}
