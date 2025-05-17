### **Intro**

Terraform code to quickly spin up an AWS EC2 VM and set up SSH access with desired public key for authentication over the internet. Highly encouraged to be used for quick use-and-destroy use cases, for development or testing purposes. By default it's set up to take advantage of free plan resources with no additional deployment or usage costs. Please, however, check the AWS billing plans to make sure nothing changed in this regard since this repo had been published and that the free plan covers the same resources in your region.



***
### **Usage:**


> 1. Obtain Terraform using your desired package manager or download the executable. More info here: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
>2. Create an Access Key credential in AWS IAM (I highly encourage you to make this credential have the least needed permissions for setting up and destroying resources, the security of the credential is on you).
>3. Fill out aws_variables.tf file with previously created Access Key credentials, your SSH public key and adjust your region accordingly.
>4. In the main directory: run **terraform plan**, confirm if all the resources align with what you need, then run **terraform apply**.
>5. When the resources are no longer needed, in the main directory run **terraform destroy**.
