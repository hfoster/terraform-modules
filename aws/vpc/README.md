# Terraform module: AWS VPC

### Requires the following inputs:

| Input name     | Description                               |
| -------------- | ----------------------------------------- |
| vpc_cidr_block | The base CIDR block for the VPC           |
| env_name       | The name of the environent we're building |

### Presents the following outputs:

| Output name | Description           |
| ----------- | --------------------- |
| vpc_id      | ID of the main VPC    |
| vpc_cidr    | CIDR block of the VPC |
