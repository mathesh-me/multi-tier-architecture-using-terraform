resource "aws_subnet" "web-subnet1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.web-subnet1-cidr
  availability_zone       = var.az-1
  map_public_ip_on_launch = true

  tags = {
    Name = var.web-subnet1-name
  }
}

resource "aws_subnet" "web-subnet2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.web-subnet2-cidr
  availability_zone       = var.az-2
  map_public_ip_on_launch = true

  tags = {
    Name = var.web-subnet2-name
  }
}