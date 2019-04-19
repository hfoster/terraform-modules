# Terraform Networking Base module

### Requires the following inputs:

| Input name     | Description                               |
| -------------- | ----------------------------------------- |
| vpc_cidr_block | The base CIDR block for the VPC           |
| aws_region     | Our target region                         |
| env_name       | The name of the environent we're building |

### Presents the following outputs:

| Output name        | Description                |
| ------------------ | -------------------------- |
| vpc_id             | ID of the main VPC         |
| private_subnet_ids | List of private subnet IDs |
| public_subnet_ids  | List of public subnet IDs  |
