
//creating an internet gateway

resource "aws_internet_gateway" "kazi-igw" {
    vpc_id = aws_vpc.kazi.id

    tags = {
      Name = "kazi-igw"
    }

}

