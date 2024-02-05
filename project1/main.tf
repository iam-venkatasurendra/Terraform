provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0277155c3f0ab2930"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-0be26577265cb367f"
}