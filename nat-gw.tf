resource "aws_nat_gateway" "nat-gw" {
  allocation_id     = aws_eip.eip.id
  connectivity_type = "public"
  subnet_id         = aws_subnet.web-subnet1.id

  tags = {
    Name = var.nat-gw-name
  }

  depends_on = [aws_internet_gateway.internet-gw]
}