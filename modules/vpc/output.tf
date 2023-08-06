output "vpc_id" {
  value = resource.aws_vpc.my_vpc.id
  depends_on = [
    resource.aws_vpc.my_vpc
  ]
}

