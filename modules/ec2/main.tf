resource "aws_instance""test-instance" {
  ami           = var.ami
  instance_type = var.instancetype
#   instance_type = "t2.micro"
  key_name  = var.key_name
  subnet_id = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address
  vpc_security_group_ids = var.instance_security_group_id
  iam_instance_profile = var.iam_profile
  # security_groups = ["sg-04d1f75624a12c06f"]
    tags = {
    "Name" = var.Name
  }
}