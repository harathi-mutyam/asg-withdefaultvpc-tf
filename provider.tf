terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
  #default_tags are provider-level tags automatically applied to all supported resources.
   default_tags {
    tags = {
      Project     = "ASG-ALB-Default-VPC"
      Environment = "Dev"
      ManagedBy   = "Terraform"
      Owner       = "Harathi"
    }
  }
}