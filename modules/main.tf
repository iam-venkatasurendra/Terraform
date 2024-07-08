provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-06c68f701d8090592" # replace this
  instance_type_value = "t2.micro"
#  subnet_id_value = "subnet-019ea91ed9b5252e7". # replace this
}

module "s3-bucket" {
  source = "./modules/s3-bucket"
  bucket_name = "my-tf-test-bucket-060724" # replace this
}