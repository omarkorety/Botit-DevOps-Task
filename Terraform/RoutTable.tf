resource "aws_route_table" "pubic-rt" {
  vpc_id = aws_vpc.tera-vpc.id
  route {
    cidr_block = var.all-route
    gateway_id = aws_internet_gateway.tera-gw.id
  }

  tags = {
    Name = "public-RT"
  }
}

#associate rout_table to  public subnet
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.pubic-rt.id
}