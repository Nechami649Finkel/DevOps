resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = { Name = var.vpc_name }
}

resource "aws_subnet" "subnet_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_a_cidr
  availability_zone = var.az1
}

resource "aws_subnet" "subnet_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_b_cidr
  availability_zone = var.az2
}