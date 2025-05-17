# define aws provider

provider "aws" {
    region     = var.aws_user_info.aws_region
    access_key = var.aws_user_info.aws_access_key
    secret_key = var.aws_user_info.aws_secret_key
}
