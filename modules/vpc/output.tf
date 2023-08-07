output "vpc_id" {
  value = resource.aws_vpc.my_vpc.id
  depends_on = [
    resource.aws_vpc.my_vpc
  ]
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
  depends_on = [
    aws_subnet.public_subnet
  ]
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
  depends_on = [
    aws_subnet.public_subnet
  ]
}