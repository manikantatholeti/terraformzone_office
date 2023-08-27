terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.11.0"
    }
  }
}
provider "aws" {
  region     = "us-north-1"
  assume_role {
    role_arn     = "arn:aws:iam::480459741140:role/terraform-assume-role"
  }
}
