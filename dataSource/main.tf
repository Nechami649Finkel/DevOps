provider "aws" {
  region = "eu-west-1"
}

data "aws_vpc" "demo" {
  filter {
    name   = "tag:Name"
    values = ["eks-vpc"]
  }
}

output "vpc_id" {
  value = data.aws_vpc.demo.id
}