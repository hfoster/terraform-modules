# Terraform HA-infrastructure module

Creates a VPC and the other required infrastructure for a High Availability environment.

### Presents the following outputs:
Output name | Details
----------- | ------------
main_vpc_id | ID of the main VPC
private_subnet1_id | ID of private subnet 1
private_subnet2_id | ID of private subnet 2
private_subnet3_id | ID of private subnet 3
public_subnet1_id | ID of public subnet 1
public_subnet2_id | ID of public subnet 2
public_subnet3_id | ID of public subnet 3
ssh_in_security_group_id | ID of the `ssh_in` security group
ssh_jump_security_group_id | ID of the `ssh_jump` security group
web_security_group_id | ID of the `web` security group
