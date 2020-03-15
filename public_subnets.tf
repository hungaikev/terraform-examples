# Public Sunets
resource "aws_subnet" "main-public-1" {
  cidr_block              = "10.0.1.0/24"
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = "true"
  availability_zone       = "eu-central-1a"

  tags = {
    Name = "main-public-1"
  }
}

resource "aws_subnet" "main-public-2" {
  cidr_block              = "10.0.2.0/24"
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = "true"
  availability_zone       = "eu-central-1b"

  tags = {
    Name = "main-public-2"
  }
}

resource "aws_subnet" "main-public-3" {
  cidr_block              = "10.0.3.0/24"
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = "true"
  availability_zone       = "eu-central-1c"

  tags = {
    Name = "main-public-3"
  }
}
