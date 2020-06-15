# Terraform module: AWS Subnet

### Requires the following inputs:

| Input name     | Description                                                                                  |
| -------------- | -------------------------------------------------------------------------------------------- |
| vpc_id         | The Terraform ID of the target VPC                                                           |
| offset         | Set to a multiple of the number of availability zones to create more than one set of subnets |
| vpc_cidr       | The host VPC's CIDR block                                                                    |
| subnet_newbits | The offset from the VPC netmask to the subnet netmask. Defaults to 8                         |
| public_ip      | Set to true for public subnet. Defaults to false                                             |
| subnet_tags    | An optional map of tags                                                                      |

### Presents the following outputs:

| Output name | Description                                  |
| ----------- | -------------------------------------------- |
| subnet_ids  | List of Terraform IDs of the created subnets |
