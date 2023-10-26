resource "aws_internet_gateway" "internet-gw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = var.igw-name
  }
}