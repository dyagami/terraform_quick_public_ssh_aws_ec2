# deploy admin ssh keypair

resource "aws_key_pair" "terraform_admin_ssh_key" {
    key_name = "terraform_admin_ssh_key"
    public_key = var.aws_user_info.admin_pubkey
}
