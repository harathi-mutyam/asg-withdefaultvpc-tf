resource "aws_launch_template" "lt" {
    name_prefix = "auto-scaling-lt"
  image_id               = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.security_group_id]
  user_data              = var.user_data
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "asg-instance"
    }
  }
}

resource "aws_autoscaling_group" "asg" {
  desired_capacity = var.asg_desired_capacity
  min_size         = var.asg_min_size
  max_size         = var.asg_max_size

  vpc_zone_identifier = var.subnet_ids
  target_group_arns  = [var.target_group_arn]

  launch_template {
    id      = aws_launch_template.lt.id
    version = "$Latest"
  }
  #tag blocks are required by certain AWS resources like ASG to propagate tags to instances,
  tag {
    key = "Name"
    value = "auto-scaling-ec2-instance"
    propagate_at_launch = true
  }
}