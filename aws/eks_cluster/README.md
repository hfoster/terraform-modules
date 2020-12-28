# Terraform module: AWS EKS Cluster

### Input variables:

| Input name       | Description                                           | Type         | Default       |
| ---------------- | ----------------------------------------------------- | ------------ | ------------- |
| cluster_name     | EKS cluster name                                      | string       | -             |
| cluster_role_arn | ARN of the cluster IAM role                           | string       | -             |
| k8s_version      | Kubernetes version                                    | string       | -             |
| priv_access      | Switch enabling private access to K8S API endpoint    | bool         | false         |
| pub_access       | Switch to enable public access to K8S API endpoint    | bool         | true          |
| pub_cidrs        | List of CIDRs to grant access to the K8S API endpoint | list(string) | ["0.0.0.0/0"] |
| security_groups  | List of Security Group IDs                            | list(string) | -             |
| subnet_ids       | List of Subnet IDs the cluster will use               | list(string) | -             |

### Outputs:

| Output name | Description                                                               | Value                                                        |
| ----------- | ------------------------------------------------------------------------- | ------------------------------------------------------------ |
| cluster_id  | The name of the cluster                                                   | aws_eks_cluster.cluster.id                                   |
| cluster_arn | ARN of the cluster                                                        | aws_eks_cluster.cluster.arn                                  |
| endpoint    | The endpoint for your Kubernetes API server                               | aws_eks_cluster.cluster.endpoint                             |
| cluster_sg  | The cluster security group that was created by Amazon EKS for the cluster | aws_eks_cluster.cluster.vpc_config.cluster_security_group_id |
