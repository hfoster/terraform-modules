resource "aws_eks_cluster" "cluster" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn
  version  = var.k8s_version

  vpc_config {
    endpoint_private_acess = var.priv_access
    endpoint_public_acess  = var.pub_access
    public_access_cidrs    = var.pub_cidrs
    security_group_ids     = var.security_groups
    subnet_ids             = var.subnet_ids
  }
}
