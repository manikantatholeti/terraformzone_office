module "vpc" {
    source ="../modules/vpc"
}
module "sg" {
    source ="../modules/sg"
  }

  module "ec2_instance" {
  source  = "../modules/ec2"
  instancetype = "t2.micro"
  ami = "ami-0f8ca728008ff5af4"
  key_name = "manikey"
  subnet_id = "subnet-0be6fff52692769c6"
  associate_public_ip_address = true
  # security_groups = "sg-04d1f75624a12c06f"
  Name = "test-instance"
  # version = "~> 4.0"
# 
}