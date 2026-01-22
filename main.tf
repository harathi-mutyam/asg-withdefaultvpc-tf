module "asg" {
  source = "./asg"

  ami_id            = data.aws_ami.amazon_linux.id
  instance_type     = var.instance_type
  key_name          = aws_key_pair.asg_key.key_name
  security_group_id = aws_security_group.ec2_sg.id
  subnet_ids        = data.aws_subnets.default.ids
  target_group_arn  = aws_lb_target_group.tg.arn

  asg_desired_capacity = var.asg_desired_capacity
  asg_min_size         = var.asg_min_size
  asg_max_size         = var.asg_max_size

  user_data = base64encode(file("${path.module}/web-server-userdata-script.sh"))
}