resource "aws_vpc" "webserver_vpc" {
  cidr_block = "10.0.0.0/16"

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "ec2-vpc"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.webserver_vpc.id
  cidr_block = "10.0.1.0/24"

  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "public-subnet"
  }
}