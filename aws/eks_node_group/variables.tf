variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "node_group_name" {
  description = "Node Group name"
  type        = string
}

variable "role_arn" {
  description = "Cluster Node Group AMI Role ARN"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs into which the cluster will be deployed"
  type        = list(string)
}

variable "ami_type" {
  description = "AMI type to use: AL2_x86_64, AL2_x86_64_GPU, AL2_ARM_64. Defaults to AL2_x86_64"
  type        = string
  default     = "AL2_x86_64"
}

variable "disk_size" {
  description = "Disk size in GiB for worker nodes. Defaults to 20"
  type        = number
  default     = 20
}

variable "instance_types" {
  description = "List of instance types associated with the EKS Node Group. Defaults to t3.medium"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}
