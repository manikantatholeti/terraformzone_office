# network module
module "vpc" {
    source ="../modules/vpc"
}
output "vpc_id" {
  value = module.vpc.vpc_id
  depends_on = [ 
    module.vpc
  ]
}
output "public_subnet_id" {
  value = module.vpc.public_subnet_id
  depends_on = [
    module.vpc
  ]
}
output "private_subnet_id" {
  value = module.vpc.private_subnet_id
  depends_on = [
    module.vpc
  ]
}

# Security Group Module
module "sg" {
    source ="../modules/sg"
    security_group_vpc_id = module.vpc.vpc_id
    depends_on = [
      module.vpc
    ]
}

output "sg_id" {
  value = module.sg.sg_id
  depends_on = [
    module.sg
  ]
}

module "iam_role" {
  source = "../modules/iam_role"  
}

output "iam_instance_profile_name" {
  value = module.iam_role.iam_instance_profile_name
  depends_on = [
    module.iam_role
  ]
}

# Instance Module
module "ec2_instance" {
  source  = "../modules/ec2"
  instancetype = "t2.micro"
  ami = "ami-0f8ca728008ff5af4"
  key_name = "manikey"
  subnet_id = module.vpc.public_subnet_id
  associate_public_ip_address = true
  instance_security_group_id = [ module.sg.sg_id ]
  iam_profile = module.iam_role.iam_instance_profile_name
  Name = "test-instance"
  # version = "~> 4.0"
# 
  depends_on = [
    module.sg,
    module.iam_role
  ]
}
# backend module
module "backend_s3" {
  source = "../modules/tfstate-s3" 
 }