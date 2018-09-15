variable "aws_region" {
  default = "eu-west-2"
}

variable "bucket_name" {
  description = "The name of the backend bucket we are creating. Set with the -var switch at plan time."
}
