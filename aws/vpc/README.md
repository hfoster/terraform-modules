# Terraform module: AWS VPC

### Requires the following inputs:

| Input name     | Description                               |
| -------------- | ----------------------------------------- |
| vpc_cidr_block | The base CIDR block for the VPC           |
| dns_support    | Switch for enabling DNS support           |
| dns_hostnames  | Switch for enabling DNS hostnames         |

### Presents the following outputs:

| Output name | Description           |
| ----------- | --------------------- |
| vpc_id      | ID of the main VPC    |
| vpc_cidr    | CIDR block of the VPC |
