resource "aws_internet_gateway" "vasakey_igw" {
  vpc_id = aws_vpc.vasakey.id
  tags = {
    Name = "vasakey - Internet Gateway"
  }
}

resource "aws_route_table" "vasakey_rta" {
    vpc_id = aws_vpc.vasakey.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.vasakey_igw.id
    }
    tags = {
        Name = "Public Subnet Route Table."
    }
}
resource "aws_route_table_association" "vasakey_ap-south-1a" {
    subnet_id = aws_subnet.subnet-1.id
    route_table_id = aws_route_table.vasakey_rta.id
}