resource "aws_route_table" "terraform-public" {
  vpc_id = aws_vpc.default.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }
  tags = {
    Name = var.Main_Routing_Table
  }
}

resource "aws_route_table_association" "terraform-public-1" {
  subnet_id      = aws_subnet.subnet-1-public.id
  route_table_id = aws_route_table.terraform-public.id
}
resource "aws_route_table_association" "terraform-public-2" {
  subnet_id      = aws_subnet.subnet-2-public.id
  route_table_id = aws_route_table.terraform-public.id
}
resource "aws_route_table_association" "terraform-public-3" {
  subnet_id      = aws_subnet.subnet-3-public.id
  route_table_id = aws_route_table.terraform-public.id
}