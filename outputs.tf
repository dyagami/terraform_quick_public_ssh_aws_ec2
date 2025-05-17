output "instance_public_ip" {
    description = "Assigned EC2 instance public IP that you can use for SSH access"
    value = aws_instance.terraform_managed_ec2.public_ip
}
