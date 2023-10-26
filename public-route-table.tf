resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gw.id
  }

  tags = {
    Name = var.public-rt-name
  }
}

resource "aws_route_table_association" "pub-rt-asscociation-1" {
  subnet_id      = aws_subnet.web-subnet1.id
  route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table_association" "pub-rt-asscociation-2" {
  subnet_id      = aws_subnet.web-subnet2.id
  route_table_id = aws_route_table.public-route-table.id
}