# Terraform HA-infrastructure module

Creates a VPC and the other required infrastructure for a High Availability environment.

### Creating

    terraform init -backend-config=backend/<env_name>
    terraform plan -var ec2_key_pair=<ec2_key_pair> -var env_name=<env_name> -out <env_name>.plan
    terraform apply <env_name>.plan

### Destroying

    terraform destroy -var ec2_key_pair=<ec2_key_pair> -var env_name=<env_name> -auto-approve

### Presents the following outputs:

| Output name           | Details                        |
| --------------------- | ------------------------------ |
| main_vpc_id           | ID of the main VPC             |
| private_subnet_ids    | List of private subnet IDs     |
| public_subnet_ids     | List of public subnet IDs      |
| elb_security_group_id | ID of the `elb` security group |
| ssh_security_group_id | ID of the `ssh` security group |
| web_security_group_id | ID of the `web` security group |
