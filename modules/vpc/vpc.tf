terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.11.0"
    }
  }
}
provider "aws" {
  region     = "ap-south-1"
}
resource "aws_vpc" "my_vpc" {
  cidr_block= "10.10.0.0/16"
}
 