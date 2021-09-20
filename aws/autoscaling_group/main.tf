resource "aws_autoscaling_group" "asg" {
  name                      = var.name
  max_size                  = var.max_size
  min_size                  = var.min_size
  default_cooldown          = var.cooldown
  launch_configuration      = var.launch_configuration
  health_check_type         = var.health_check_type
  health_check_grace_period = var.health_check_grace_period
  desired_capacity          = var.desired_capacity
  vpc_zone_identifier       = var.subnets
}
