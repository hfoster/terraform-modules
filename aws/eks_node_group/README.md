# Terraform module: AWS EKS Node Group

### Requires the following inputs:

| Input name      | Description                                                  | Type         | Default       |
| --------------- | ------------------------------------------------------------ | ------------ | ------------- |
| cluster_name    | EKS cluster name                                             | string       |               |
| node_group_name | Node Group name                                              | string       |               |
| role_arn        | luster Node Group AMI Role ARN                               | string       |               |
| subnet_ids      | A list of subnet IDs into which the cluster will be deployed | list(string) |               |
| ami_type        | AMI type to use: AL2_x86_64, AL2_x86_64_GPU, AL2_ARM_64      | string       | AL2_x86_64    |
| disk_size       | Disk size in GiB for worker nodes                            | number       | 20            |
| instance_types  | List of instance types associated with the EKS Node Group    | list(string) | ["t3.medium"] |
| max_size        | Maximum number of worker nodes                               | number       |               |
| min_size        | Minimum number of worker nodes                               | number       |               |
| desired_size    | Desired number of worker nodes                               | number       |               |
