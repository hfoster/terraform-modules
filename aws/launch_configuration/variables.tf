variable "name" {
  type = string
}

variable "image_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_profile" {
  type = string
}

variable "ec2_key" {
  type = string
}

variable "sgs" {
  type = list(string)
}

variable "public_ips" {
  type    = bool
  default = false
}

variable "user_data" {
  type = string
}

variable "ebs_optimized" {
  type    = bool
  default = true
}

variable "spot_price" {
  type    = string
  default = "On-demand price"
}

variable "placement_tenancy" {
  type    = string
  default = "default"
}

variable "ebs_dev_name" {
  type = string
}

variable "ebs_snapshot_id" {
  type    = string
  default = null
}

variable "ebs_vol_encrypt" {
  type    = bool
  default = false
}

variable "ebs_vol_type" {
  type    = string
  default = "gp3"
}

variable "ebs_vol_size" {
  type    = string
  default = "20g"
}