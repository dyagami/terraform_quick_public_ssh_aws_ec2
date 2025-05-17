# declare user information needed for terraform to deploy

variable "aws_user_info" {
    type = map(string)
    default = {
        admin_pubkey = "ssh-ed25519 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX USER@HOST"
        aws_access_key = "YYYYYYYYYYYYYYYYYYYY"
        aws_secret_key = "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"
        aws_instance_type = "t3.micro" # instance type, in this case t3.micro is free plan-eligible
        aws_ami = "ami-04542995864e26699" # resource ami, in this case ubuntu server
        aws_region = "eu-north-1" # region the ec2 will be deployed to
    }    
    sensitive = true
}

