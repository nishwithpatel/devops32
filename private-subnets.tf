resource "aws_subnet" "subnet-1-private" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.private_subnet1_cidr
  availability_zone = "us-east-1a"

  tags = {
    Name = var.private_subnet1_name
  }
}

resource "aws_subnet" "subnet-2-private" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.private_subnet2_cidr
  availability_zone = "us-east-1b"

  tags = {
    Name = var.private_subnet2_name
  }
}

resource "aws_subnet" "subnet-3-private" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.private_subnet3_cidr
  availability_zone = "us-east-1c"

  tags = {
    Name = var.private_subnet3_name
  }

}