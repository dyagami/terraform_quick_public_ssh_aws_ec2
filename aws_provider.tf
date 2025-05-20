# lock in the provider version

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta1"
    }

  }
}

# define aws provider

provider "aws" {
    region     = var.aws_user_info.aws_region
    access_key = var.aws_user_info.aws_access_key # comment out if you use aws-cli and have used 'aws configure' command before
    secret_key = var.aws_user_info.aws_secret_key # comment out if you use aws-cli and have used 'aws configure' command before
}
