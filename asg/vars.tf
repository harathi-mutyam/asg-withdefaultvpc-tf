variable "ami_id" {
  description = "AMI ID to use for EC2 instances in the Auto Scaling Group"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for the Auto Scaling Group"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name to associate with EC2 instances"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID to attach to EC2 instances"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where the Auto Scaling Group will launch instances"
  type        = list(string)
}

variable "target_group_arn" {
  description = "ARN of the ALB target group to associate with the Auto Scaling Group"
  type        = string
}

variable "asg_desired_capacity" {
  description = "Desired number of EC2 instances in the Auto Scaling Group"
  type        = number
}

variable "asg_min_size" {
  description = "Minimum number of EC2 instances in the Auto Scaling Group"
  type        = number
}

variable "asg_max_size" {
  description = "Maximum number of EC2 instances in the Auto Scaling Group"
  type        = number
}

variable "user_data" {
  description = "Base64-encoded user data script for EC2 instance initialization"
  type        = string
}