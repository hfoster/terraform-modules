data "aws_availability_zones" "available" {}

locals {
  num_azs = length(data.aws_availability_zones.available.names)
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs."
  type        = list(string)
}
