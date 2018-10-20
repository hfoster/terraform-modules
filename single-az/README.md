# Terraform Single-AZ infrastructure module

Creates a VPC and the other required infrastructure for a fast startup environment using a single Availability Zone.

### Creating

    terraform init -backend-config=backend-config/<env_name>
    terraform plan -var ec2_key_pair=<ec2_key_pair> -var env_name=<env_name> -out <env_name>.plan
    terraform apply <env_name>.plan

### Destroying

    terraform destroy -var ec2_key_pair=<ec2_key_pair> -var env_name=<env_name> -auto-approve

### Presents the following outputs:

| Output name           | Details                        |
| --------------------- | ------------------------------ |
| main_vpc_id           | ID of the main VPC             |
| private_subnet_id     | Private subnet ID              |
| public_subnet_ids     | Public subnet ID               |
| elb_security_group_id | ID of the `elb` security group |
| ssh_security_group_id | ID of the `ssh` security group |
| web_security_group_id | ID of the `web` security group |
