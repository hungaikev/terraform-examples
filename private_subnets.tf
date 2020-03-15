# Private Subnets
resource "aws_subnet" "main-private-1" {
  cidr_block              = "10.0.4.0/24"
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = "false"
  availability_zone       = "eu-central-1a"

  tags = {
    Name = "main-private-1"
  }
}

resource "aws_subnet" "main-private-2" {
  cidr_block              = "10.0.5.0/24"
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = "false"
  availability_zone       = "eu-central-1b"

  tags = {
    Name = "main-private-2"
  }
}

resource "aws_subnet" "main-private-3" {
  cidr_block              = "10.0.6.0/24"
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = "false"
  availability_zone       = "eu-central-1c"

  tags = {
    Name = "main-private-3"
  }
}