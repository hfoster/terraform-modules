resource "aws_eks_node_group" "node_group" {
  cluster_name    = var.cluster_name
  node_group_name = var.node_group_name
  node_role_arn   = var.role_arn
  subnet_ids      = var.subnet_ids
  ami_type        = var.ami_type
  disk_size       = var.disk_size
  instance_types  = var.instance_types

  scaling_config {
    max_size     = var.max_size
    min_size     = var.min_size
    desired_size = var.desired_size
  }
}
