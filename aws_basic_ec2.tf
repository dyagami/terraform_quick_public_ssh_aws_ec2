# deploy a new t3_micro ec2 vm resource

resource "aws_instance" "terraform_managed_ec2" {
  provider = aws
  ami           = var.aws_user_info.aws_ami
  instance_type = var.aws_user_info.aws_instance_type
  associate_public_ip_address = true
  vpc_security_group_ids = [ aws_security_group.ingress_ssh_egress_any.id ]
  subnet_id = aws_subnet.dev_subnet.id
  key_name = aws_key_pair.terraform_admin_ssh_key.id
    tags = {
        name = "terraform_managed_ec2"
    }
}
