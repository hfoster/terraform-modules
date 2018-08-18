# Terraform HA-infrastructure module

Creates a VPC and the other required infrastructure for a High Availability environment.

### Presents the following outputs:
Output name | Details
----------- | ------------
main_vpc_id | ID of the main VPC
private_subnet_ids | List of private subnet IDs
public_subnet_ids | List of public subnet IDs
ssh_in_security_group_id | ID of the `ssh_in` security group
ssh_jump_security_group_id | ID of the `ssh_jump` security group
web_security_group_id | ID of the `web` security group
