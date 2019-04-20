# Terraform SSH Bastion module

### Requires the following inputs:

| Input name        | Description                              |
| ----------------- | ---------------------------------------- |
| aws_region        | Our target region                        |
| ec2_key_pair      | Key pair for Bastion creation and access |
| public_subnet_ids | List of public subnet IDs                |
| env_name          | Target environment name                  |
| vpc_id            | ID of the target VPC                     |

### Presents the following outputs:

| Output name           | Description                  |
| --------------------- | ---------------------------- |
| ssh_security_group_id | ID of the SSH Security Group |
