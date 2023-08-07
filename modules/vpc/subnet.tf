resource "aws_subnet" "public_subnet" {
  
  vpc_id = aws_vpc.my_vpc.id #explisit dependency
  cidr_block = "10.10.0.0/24"
  tags = {
    name = "public subnet"
  }
  depends_on = [
    aws_vpc.my_vpc
  ]
}
resource "aws_subnet" "private_subnet" {
  
  vpc_id = aws_vpc.my_vpc.id #explisit dependency
  cidr_block = "10.10.1.0/24"
  depends_on = [
    aws_vpc.my_vpc
  ]
}