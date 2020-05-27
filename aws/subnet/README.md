# Terraform module: AWS Subnet

### Requires the following inputs:

| Input name     | Description                                                          |
| -------------- | -------------------------------------------------------------------- |
| vpc_id         | The Terraform ID of the target VPC                                   |
| offset         | Set >= 1 to create more than one set of subnets                      |
| vpc_cidr       | The host VPC's CIDR block                                            |
| subnet_newbits | The offset from the VPC netmask to the subnet netmask. Defaults to 8 |

### Presents the following outputs:

| Output name | Description                                  |
| ----------- | -------------------------------------------- |
| subnet_ids  | List of Terraform IDs of the created subnets |
