provider "aws" {
 region = "ap-south-1"
}
resource "aws_security_group" "tf_sg" {

name = "tf_sg"
description = "Allows traffic on port 80"
vpc_id = "vpc-01c39af3b49694811"

ingress{
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
} 
ingress{
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
} 
ingress{
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
} 
egress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}
    
}