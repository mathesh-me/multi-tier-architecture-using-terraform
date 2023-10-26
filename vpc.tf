resource "aws_vpc" "vpc" {
  cidr_block = var.vpc-cidr-block
  tags = {
    Name = var.vpc-name
  }
}