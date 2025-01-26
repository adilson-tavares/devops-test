resource "aws_internet_gateway" "dev_igw" {
  vpc_id = aws_vpc.webserver_vpc.id

  tags = {
    Name = "ec2-igw"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.webserver_vpc.id

  tags = {
    Name = "public-route-table"
  }
}

resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.dev_igw.id
}

resource "aws_route_table_association" "rtb_pulic" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public_route_table.id
  
  depends_on = [
    aws_route_table.public_route_table
  ]

}