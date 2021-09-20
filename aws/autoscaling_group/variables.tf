variable "name" {
  type = string
}

variable "max_size" {
  type = number
}

variable "min_size" {
  type = number
}

variable "desired_capacity" {
  type = number
}

variable "cooldown" {
  type    = number
  default = 300
}

variable "launch_configuration" {
  type = string
}

variable "health_check_type" {
  type = string
}

variable "subnets" {
  type = list(string)
}

variable "health_check_grace_period" {
  type    = number
  default = 300
}