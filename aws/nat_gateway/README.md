# Terraform module: AWS NAT Gateway

### Requires the following inputs:

| Input name        | Description                               |
| ----------------- | ----------------------------------------- |
| env_name          | The target environment name               |
| public_subnet_ids | A list of Terraform IDs of public subnets |

### Presents the following outputs:

| Output name     | Description                       |
| --------------- | --------------------------------- |
| nat_gateway_ids | Terraform IDs of the NAT Gateways |
