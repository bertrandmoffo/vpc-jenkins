
//public subnet

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.kazi.id
  cidr_block = "44.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public"
  }
}


//private subnets

resource "aws_subnet" "private" {
  vpc_id = aws_vpc.kazi.id
  cidr_block = "44.0.2.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name = "private"
  }
}
