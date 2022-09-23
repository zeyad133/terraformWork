# Declare the data source
data "aws_availability_zones" "available2" {
  state = "available"
}


resource "aws_subnet" "secondPubSubnet" {
  availability_zone = data.aws_availability_zones.available2.names[0]
  vpc_id     = aws_vpc.main.id 
  cidr_block = "10.0.0.0/24"
}

resource "aws_subnet" "secondPrivSubnet" {
  availability_zone = data.aws_availability_zones.available2.names[1]
  vpc_id     = aws_vpc.main.id 
  cidr_block = "10.0.3.0/24"
}
