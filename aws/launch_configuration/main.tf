resource "aws_launch_configuration" "launch_config" {
  name                        = var.name
  image_id                    = var.image_id
  instance_type               = var.instance_type
  iam_instance_profile        = var.instance_profile
  key_name                    = var.ec2_key
  security_groups             = var.sgs
  associate_public_ip_address = var.public_ips
  user_data_base64            = var.user_data
  ebs_optimized               = var.ebs_optimized
  spot_price                  = var.spot_price
  placement_tenancy           = var.placement_tenancy

  ebs_block_device {
    device_name = var.ebs_dev_name
    snapshot_id = var.ebs_snapshot_id
    volume_type = var.ebs_vol_type
    volume_size = var.ebs_vol_size
    encrypted   = var.ebs_vol_encrypt
  }
}
