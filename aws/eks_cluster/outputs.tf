output "cluster_id" {
  value = aws_eks_cluster.cluster.id
}

output "cluster_arn" {
  value = aws_eks_cluster.cluster.arn
}

output "endpoint" {
  value = aws_eks_cluster.cluster.endpoint
}

output "cluster_sg" {
  value = aws_eks_cluster.cluster.vpc_config[0].cluster_security_group_id
}
