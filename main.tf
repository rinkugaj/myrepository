provider "aws" {
  region = "us-west-2"

}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "MYVPC"
  }

}
resource "aws_subnet" "Public" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.10.0.0/24"
  tags = {
    Name = "PublicSubnet"
  }
}
