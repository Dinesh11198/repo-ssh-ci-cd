resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.vasakey.id
  cidr_block = var.subnet-1
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1a"
  assign_ipv6_address_on_creation = false

  tags = {
    Name = "Subnet-1"
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id     = aws_vpc.vasakey.id
  cidr_block = var.subnet-2
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1b"
  assign_ipv6_address_on_creation = false

  tags = {
    Name = "Subnet-2"
  }
}


