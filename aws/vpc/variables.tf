variable "vpc_cidr_block" {
  description = "The base CIDR block for the VPC."
  default     = "10.0.0.0/16"
  type        = string
}

variable "dns_support" {
  description = "Switch for enabling DNS support."
  default     = true
  type        = bool
}

variable "dns_hostnames" {
  description = "Switch for enabling DNS hostnames."
  default     = true
  type        = bool
}
