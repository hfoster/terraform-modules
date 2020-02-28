# Terraform module: AWS Subnet

### Requires the following inputs:

| Input name | Description                                     |
| ---------- | ----------------------------------------------- |
| vpc_id     | The Terraform ID of the target VPC              |
| env_name   | The name of the environent we're building       |
| offset     | Set >= 1 to create more than one set of subnets |

### Presents the following outputs:

| Output name | Description                                  |
| ----------- | -------------------------------------------- |
| subnet_ids  | List of Terraform IDs of the created subnets |
