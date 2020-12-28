variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "cluster_role_arn" {
  description = "ARN of the cluster IAM role"
  type        = string
}

variable "k8s_version" {
  description = "Kubernetes version"
  type        = string
}

variable "priv_access" {
  description = "Switch enabling private access to K8S API endpoint"
  type        = bool
  default     = false
}

variable "pub_access" {
  description = "Switch to enable public access to K8S API endpoint"
  type        = bool
  default     = true
}

variable "pub_cidrs" {
  description = "List of CIDRs to grant access to the K8S API endpoint"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "security_groups" {
  description = "List of Security Group IDs"
  type        = list(string)
}

variable "subnet_ids" {
  description = "List of Subnet IDs the cluster will use"
  type        = list(string)
}
