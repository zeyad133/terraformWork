# Declare the data source
data "aws_availability_zones" "available" {
  state = "available"
}


resource "aws_subnet" "firstPubSubnet" {
  availability_zone = data.aws_availability_zones.available.names[1]
  vpc_id     = aws_vpc.main.id 
  cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "firstPrivSubnet" {
  availability_zone = data.aws_availability_zones.available.names[0]
  vpc_id     = aws_vpc.main.id 
  cidr_block = "10.0.2.0/24"
}
