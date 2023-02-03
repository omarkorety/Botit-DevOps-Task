resource "aws_vpc" "tera-vpc" {
  cidr_block = var.my_vpc_cidr

  tags = {
    Name = "tera-vpc"
  }
}
#############################################################
#ELASTC IP
resource "aws_eip" "lb" {
  vpc = true
}
#puplic subnet
resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.tera-vpc.id
  cidr_block        = var.public_cidr
  availability_zone = var.Az1

  tags = {
    Name = "pub_1"
  }
}

# Internet GateWay
resource "aws_internet_gateway" "tera-gw" {
  vpc_id = aws_vpc.tera-vpc.id

  tags = {
    Name = "tera-gw"
  }
}

