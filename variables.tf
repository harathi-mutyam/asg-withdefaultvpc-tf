variable "region" {
  description = "AWS region"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "asg_desired_capacity" {
  description = "Desired number of EC2 instances in ASG"
  type        = number
}

variable "asg_min_size" {
  description = "Minimum number of EC2 instances in ASG"
  type        = number
}

variable "asg_max_size" {
  description = "Maximum number of EC2 instances in ASG"
  type        = number
}

variable "my_ip" {
  description = "Your public IP for SSH (e.g., 1.2.3.4/32)"
  type        = string
}