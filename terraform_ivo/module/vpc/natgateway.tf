resource "aws_subnet" "private-subnet-1" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.cidr_block_private_subnet1
availability_zone = "var.bi1"
map_public_ip_on_launch = false

tags = {
  Name = "private-subnet-1"
}
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.cidr_block_private_subnet2
availability_zone = "var.bi2"
map_public_ip_on_launch = false

tags = {
  Name = "private-subnet-2"
}
}

resource "aws_eip" "nat-1-ip" {
  domain = "vpc"
  depends_on                = [aws_internet_gateway.gw]
}

resource "aws_eip" "nat-2-ip" {
  domain = "vpc"
  depends_on                = [aws_internet_gateway.gw]
}

resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.nat-1-ip.id
  subnet_id     = aws_subnet.private-subnet-1.id

  tags = {
    Name = "gw NAT 1"
  }
}

resource "aws_nat_gateway" "nat2" {
  allocation_id = aws_eip.nat-2-ip.id
  subnet_id     = aws_subnet.private-subnet-2.id

  tags = {
    Name = "gw NAT 2"
  }
}

### VPC setup for Nat
resource "aws_route_table" "main-private-1" {
  vpc_id = aws_vpc.vpc.id
  route = {
    cider_block = var.cidr_route_table_1
    nat_gatway_id = aws_nat_gateway.nat1.id
  }
}

resource "aws_route_table" "main-private-2" {
  vpc_id = aws_vpc.vpc.id
  route = {
    cider_block = var.cidr_route_table_2
    nat_gatway_id = aws_nat_gateway.nat2.id
  }
} 

resource "aws_route_table_association" "private-1" {
  subnet_id      = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.main-private-1.id
}

resource "aws_route_table_association" "private-2" {
  gateway_id     = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.main-private-2.id
}