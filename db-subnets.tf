resource "aws_subnet" "db-subnet1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.db-subnet1-cidr
  availability_zone       = var.az-1
  map_public_ip_on_launch = false

  tags = {
    Name = var.db-subnet1-name
  }
}

resource "aws_subnet" "db-subnet2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.db-subnet2-cidr
  availability_zone       = var.az-2
  map_public_ip_on_launch = true

  tags = {
    Name = var.db-subnet2-name
  }
}